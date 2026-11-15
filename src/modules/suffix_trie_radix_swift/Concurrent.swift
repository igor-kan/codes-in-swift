import Foundation

public actor ConcurrentPrefixIndex {
    private var trie = RadixTrie<Int>()

    public init() {}

    public func putAll(_ entries: [(String, Int)]) throws {
        for (k, v) in entries {
            try trie.insert(key: k, value: v)
        }
    }

    public func complete(_ prefix: String) -> [String] {
        return trie.keysWithPrefix(prefix)
    }
}
