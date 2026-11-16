import Foundation

public struct AhoCorasickAutomaton: BytePatternAutomaton, Sendable {
    private var nodes: [AhoNode]
    private let patternLengths: [Int]

    public init(patterns: [String]) throws {
        guard !patterns.isEmpty else { throw AhoSwiftError.emptyPatternSet }
        var tbl = [AhoNode()]
        var pLens = [Int]()
        pLens.reserveCapacity(patterns.count)
        for (pid, p) in patterns.enumerated() {
            let bs = Array(p.utf8)
            guard !bs.isEmpty else { throw AhoSwiftError.emptyPatternEntry(index: pid) }
            pLens.append(bs.count)
            var cur = 0
            for b in bs {
                let bi = Int(b)
                if tbl[cur].next[bi] == 0 {
                    tbl[cur].next[bi] = tbl.count
                    tbl.append(AhoNode())
                }
                cur = tbl[cur].next[bi]
            }
            tbl[cur].outputs.append(pid)
        }

        var queue = [Int]()
        var head = 0
        for c in 0..<256 {
            let nxt = tbl[0].next[c]
            if nxt != 0 { queue.append(nxt) }
        }
        while head < queue.count {
            let u = queue[head]
            head += 1
            let f = tbl[u].fail
            tbl[u].outputs.append(contentsOf: tbl[f].outputs)
            for c in 0..<256 {
                let nxt = tbl[u].next[c]
                let fb = tbl[f].next[c]
                if nxt != 0 {
                    tbl[nxt].fail = fb
                    queue.append(nxt)
                } else {
                    tbl[u].next[c] = fb
                }
            }
        }
        self.nodes = tbl
        self.patternLengths = pLens
    }

    public func matches(in bytes: [UInt8]) -> [AhoMatch] {
        var res = [AhoMatch]()
        var state = 0
        for (idx, b) in bytes.enumerated() {
            state = nodes[state].next[Int(b)]
            for pid in nodes[state].outputs {
                res.append(AhoMatch(offset: idx + 1 - patternLengths[pid], patternIndex: pid))
            }
        }
        return res
    }

    public func matchCount(in text: String) -> Int {
        return matches(in: Array(text.utf8)).count
    }
}
