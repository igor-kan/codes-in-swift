import Foundation

final class BTreeNodeStorage<Value> {
    var isLeaf: Bool
    var keys: [Int]
    var vals: [Value]
    var children: [BTreeNodeStorage<Value>]

    init(isLeaf: Bool, keys: [Int] = [], vals: [Value] = [], children: [BTreeNodeStorage<Value>] = []) {
        self.isLeaf = isLeaf
        self.keys = keys
        self.vals = vals
        self.children = children
    }

    func cloneNode() -> BTreeNodeStorage<Value> {
        BTreeNodeStorage(
            isLeaf: isLeaf,
            keys: keys,
            vals: vals,
            children: children
        )
    }
}

public struct CowBTree<Value: Sendable>: OrderedCowDictProtocol {
    private var root: BTreeNodeStorage<Value>
    private let t: Int = 4
    public private(set) var count: Int = 0
    public private(set) var copyEvents: Int = 0

    public init() {
        self.root = BTreeNodeStorage<Value>(isLeaf: true)
    }

    private mutating func ensureUniqueRoot() {
        if !isKnownUniquelyReferenced(&root) {
            root = root.cloneNode()
            copyEvents += 1
        }
    }

    public subscript(key: Int) -> Value? {
        get { search(node: root, key: key) }
        set {
            if let v = newValue { insert(key: key, value: v) }
        }
    }

    private func search(node: BTreeNodeStorage<Value>, key: Int) -> Value? {
        var i = 0
        while i < node.keys.count && key > node.keys[i] { i += 1 }
        if i < node.keys.count && node.keys[i] == key { return node.vals[i] }
        if node.isLeaf { return nil }
        return search(node: node.children[i], key: key)
    }

    public mutating func insert(key: Int, value: Value) {
        ensureUniqueRoot()
        let maxKeys = 2 * t - 1
        if root.keys.count == maxKeys {
            let newRoot = BTreeNodeStorage<Value>(isLeaf: false, children: [root])
            root = newRoot
            splitChild(parent: root, idx: 0)
        }
        if insertNonFull(node: root, key: key, val: value) {
            count += 1
        }
    }

    private func splitChild(parent: BTreeNodeStorage<Value>, idx: Int) {
        if !isKnownUniquelyReferenced(&parent.children[idx]) {
            parent.children[idx] = parent.children[idx].cloneNode()
        }
        let y = parent.children[idx]
        let z = BTreeNodeStorage<Value>(isLeaf: y.isLeaf)
        let midKey = y.keys[t - 1]
        let midVal = y.vals[t - 1]
        z.keys = Array(y.keys[t...])
        z.vals = Array(y.vals[t...])
        y.keys = Array(y.keys[..<(t - 1)])
        y.vals = Array(y.vals[..<(t - 1)])
        if !y.isLeaf {
            z.children = Array(y.children[t...])
            y.children = Array(y.children[..<t])
        }
        parent.keys.insert(midKey, at: idx)
        parent.vals.insert(midVal, at: idx)
        parent.children.insert(z, at: idx + 1)
    }

    private func insertNonFull(node: BTreeNodeStorage<Value>, key: Int, val: Value) -> Bool {
        for j in 0..<node.keys.count where node.keys[j] == key {
            node.vals[j] = val
            return false
        }
        var i = node.keys.count - 1
        if node.isLeaf {
            while i >= 0 && node.keys[i] > key { i -= 1 }
            node.keys.insert(key, at: i + 1)
            node.vals.insert(val, at: i + 1)
            return true
        }
        while i >= 0 && node.keys[i] > key { i -= 1 }
        i += 1
        if !isKnownUniquelyReferenced(&node.children[i]) {
            node.children[i] = node.children[i].cloneNode()
        }
        if node.children[i].keys.count == 2 * t - 1 {
            splitChild(parent: node, idx: i)
            if key == node.keys[i] { node.vals[i] = val; return false }
            if key > node.keys[i] { i += 1 }
            if !isKnownUniquelyReferenced(&node.children[i]) {
                node.children[i] = node.children[i].cloneNode()
            }
        }
        return insertNonFull(node: node.children[i], key: key, val: val)
    }

    public func sortedPairs() -> [(Int, Value)] {
        var out: [(Int, Value)] = []
        out.reserveCapacity(count)
        func walk(_ n: BTreeNodeStorage<Value>) {
            for i in 0..<n.keys.count {
                if !n.isLeaf { walk(n.children[i]) }
                out.append((n.keys[i], n.vals[i]))
            }
            if !n.isLeaf { walk(n.children[n.keys.count]) }
        }
        walk(root)
        return out
    }
}
