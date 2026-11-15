import Foundation

public enum ParallelKmpSearcher {
    public static func searchDocuments(_ docs: [String], pattern: String) async throws -> [[Int]] {
        let matcher = KmpMatcher()
        let plan = try matcher.compile(pattern: Array(pattern.utf8))
        return await withTaskGroup(of: (Int, [Int]).self) { group in
            for (idx, doc) in docs.enumerated() {
                group.addTask {
                    return (idx, matcher.findAll(in: Array(doc.utf8), plan: plan))
                }
            }
            var out = Array(repeating: [Int](), count: docs.count)
            for await (idx, res) in group { out[idx] = res }
            return out
        }
    }
}
