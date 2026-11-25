public struct ArenaTrie: Sendable, TaggedAlgorithm {
    struct Node: Sendable {
        var next: [UInt8: Int] = [:]
        var isWord: Bool = false
    }
    private var nodes: [Node] = [Node()]
    public init() {}
    public mutating func insert(_ word: String) {
        var cur = 0
        for b in word.utf8 {
            if let nxt = nodes[cur].next[b] {
                cur = nxt
            } else {
                let id = nodes.count
                nodes.append(Node())
                nodes[cur].next[b] = id
                cur = id
            }
        }
        nodes[cur].isWord = true
    }
    public func contains(_ word: String) -> Bool {
        var cur = 0
        for b in word.utf8 {
            guard let nxt = nodes[cur].next[b] else { return false }
            cur = nxt
        }
        return nodes[cur].isWord
    }
    public func longestTerminalPrefix(of query: String) -> Int {
        var cur = 0, len = 0, best = 0
        for b in query.utf8 {
            guard let nxt = nodes[cur].next[b] else { break }
            cur = nxt; len += 1
            if nodes[cur].isWord { best = len }
        }
        return best
    }
}
