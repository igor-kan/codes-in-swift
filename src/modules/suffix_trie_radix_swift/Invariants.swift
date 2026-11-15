import Foundation

public enum RadixTrieInvariants {
    public static func countTerminals<V: Sendable>(_ node: RadixNode<V>) -> Int {
        var total = node.value != nil ? 1 : 0
        for edge in node.children.values {
            if edge.label.isEmpty { return -100000 }
            let sub = countTerminals(edge.target)
            if sub < 0 { return sub }
            total += sub
        }
        return total
    }

    public static func verify<V: Sendable>(_ trie: RadixTrie<V>) -> Bool {
        return countTerminals(trie.root) == trie.count
    }
}
