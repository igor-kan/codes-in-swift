import Foundation

public enum RadixTrieUnitTests {
    public static func runAll() {
        var trie = RadixTrie<Int>()
        try! trie.insert(key: "romane", value: 1)
        try! trie.insert(key: "romanus", value: 2)
        try! trie.insert(key: "romulus", value: 3)
        try! trie.insert(key: "rubens", value: 4)
        assert(trie.search(key: "romanus") == 2)
        assert(trie.search(key: "roman") == nil)
        assert(trie.keysWithPrefix("rom") == ["romane", "romanus", "romulus"])
        assert(trie.longestMatchedPrefix(of: "romanesque")?.0 == "romane")
        assert(RadixTrieInvariants.verify(trie))
    }
}
