import Foundation

public extension RadixTrie {
    func longestMatchedPrefix(of query: String) -> (String, Value)? {
        var cur = root
        var rem = Array(query.utf8)[0...]
        var matched: [UInt8] = []
        var best: (String, Value)? = nil
        while !rem.isEmpty {
            guard let first = rem.first, let edge = cur.children[first] else { break }
            if rem.count < edge.label.count { break }
            for i in 0..<edge.label.count {
                if rem[rem.startIndex + i] != edge.label[i] { return best }
            }
            matched.append(contentsOf: edge.label)
            rem = rem.dropFirst(edge.label.count)
            cur = edge.target
            if let val = cur.value {
                best = (String(decoding: matched, as: UTF8.self), val)
            }
        }
        return best
    }
}
