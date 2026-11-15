import Foundation

public struct RadixTrie<Value: Sendable>: PrefixMapProtocol, Sendable {
    internal var root = RadixNode<Value>()
    public private(set) var count: Int = 0

    public init() {}

    public mutating func insert(key: String, value: Value) throws {
        let bytes = Array(key.utf8)
        guard !bytes.isEmpty else { throw RadixTrieError.emptyKeyNotSupported }
        if Self.insertBytes(&root, bytes[0..<bytes.count], value: value) {
            count += 1
        }
    }

    private static func commonPrefixLen(_ a: ArraySlice<UInt8>, _ b: ArraySlice<UInt8>) -> Int {
        let limit = min(a.count, b.count)
        var i = 0
        while i < limit && a[a.startIndex + i] == b[b.startIndex + i] {
            i += 1
        }
        return i
    }

    private static func insertBytes(
        _ node: inout RadixNode<Value>,
        _ rem: ArraySlice<UInt8>,
        value: Value
    ) -> Bool {
        guard let first = rem.first else {
            let inserted = node.value == nil
            node.value = value
            return inserted
        }
        guard var edge = node.children[first] else {
            let leaf = RadixNode<Value>(value: value, children: [:])
            node.children[first] = RadixEdge(label: Array(rem), target: leaf)
            return true
        }
        let lcp = commonPrefixLen(edge.label[0..<edge.label.count], rem)
        if lcp == edge.label.count {
            let rest = rem.dropFirst(lcp)
            let res = insertBytes(&edge.target, rest, value: value)
            node.children[first] = edge
            return res
        }
        var mid = RadixNode<Value>()
        let oldSuffix = Array(edge.label.dropFirst(lcp))
        let oldFirst = oldSuffix[0]
        mid.children[oldFirst] = RadixEdge(label: oldSuffix, target: edge.target)
        let inserted: Bool
        if lcp == rem.count {
            mid.value = value
            inserted = true
        } else {
            let newSuffix = Array(rem.dropFirst(lcp))
            mid.children[newSuffix[0]] = RadixEdge(
                label: newSuffix,
                target: RadixNode<Value>(value: value, children: [:])
            )
            inserted = true
        }
        node.children[first] = RadixEdge(label: Array(edge.label.prefix(lcp)), target: mid)
        return inserted
    }

    public func search(key: String) -> Value? {
        var cur = root
        var rem = Array(key.utf8)[0...]
        while !rem.isEmpty {
            guard let edge = cur.children[rem.first!] else { return nil }
            let lcp = Self.commonPrefixLen(edge.label[0..<edge.label.count], rem)
            if lcp < edge.label.count { return nil }
            rem = rem.dropFirst(lcp)
            cur = edge.target
        }
        return cur.value
    }

    public func keysWithPrefix(_ prefix: String) -> [String] {
        var cur = root
        var built: [UInt8] = []
        var rem = Array(prefix.utf8)[0...]
        while !rem.isEmpty {
            guard let edge = cur.children[rem.first!] else { return [] }
            let lcp = Self.commonPrefixLen(edge.label[0..<edge.label.count], rem)
            if lcp < rem.count && lcp < edge.label.count { return [] }
            built.append(contentsOf: edge.label)
            rem = rem.dropFirst(min(rem.count, edge.label.count))
            cur = edge.target
        }
        var out: [String] = []
        Self.collect(node: cur, path: built, out: &out)
        return out
    }

    private static func collect(node: RadixNode<Value>, path: [UInt8], out: inout [String]) {
        if node.value != nil {
            out.append(String(decoding: path, as: UTF8.self))
        }
        for keyByte in node.children.keys.sorted() {
            let edge = node.children[keyByte]!
            var next = path
            next.append(contentsOf: edge.label)
            collect(node: edge.target, path: next, out: &out)
        }
    }
}
