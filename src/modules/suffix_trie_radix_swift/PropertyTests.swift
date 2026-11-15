import Foundation

public enum RadixTriePropertyTests {
    public static func runModelCheck() {
        var trie = RadixTrie<Int>()
        var model: [String: Int] = [:]
        let words = ["alpha", "alpine", "alto", "beta", "bet", "gamma", "alp", "alphas"]
        for (idx, w) in words.enumerated() {
            try! trie.insert(key: w, value: idx)
            model[w] = idx
            assert(RadixTrieInvariants.verify(trie))
        }
        for (k, v) in model {
            assert(trie.search(key: k) == v)
        }
        let pref = trie.keysWithPrefix("al")
        assert(pref == model.keys.filter { $0.hasPrefix("al") }.sorted())
    }
}
