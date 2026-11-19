public final class Eertree {
    struct Node { var len: Int; var link: Int; var next: [Int] }
    private let s: [UInt8]
    private var nodes: [Node] = []
    private var suff = 1
    public init(_ text: String) {
        self.s = Array(text.utf8)
        nodes.append(Node(len: -1, link: 0, next: [Int](repeating: -1, count: 26)))
        nodes.append(Node(len: 0, link: 0, next: [Int](repeating: -1, count: 26)))
        for i in 0..<s.count { addPos(i) }
    }
    private func addPos(_ pos: Int) {
        var cur = suff
        let c = Int(s[pos]) - 97
        while true {
            let l = nodes[cur].len
            if pos - 1 - l >= 0 && s[pos - 1 - l] == s[pos] { break }
            cur = nodes[cur].link
        }
        if nodes[cur].next[c] != -1 { suff = nodes[cur].next[c]; return }
        let nw = nodes.count, nwLen = nodes[cur].len + 2
        nodes.append(Node(len: nwLen, link: 1, next: [Int](repeating: -1, count: 26)))
        nodes[cur].next[c] = nw; suff = nw
        if nwLen == 1 { return }
        while true {
            cur = nodes[cur].link
            let l = nodes[cur].len
            if pos - 1 - l >= 0 && s[pos - 1 - l] == s[pos] {
                nodes[nw].link = nodes[cur].next[c]; break
            }
        }
    }
    public var distinctCount: Int { nodes.count - 2 }
}
