import Foundation

public enum FlatCsrTopoFastPath {
    public static func scheduleCount(vertexCount: Int, edges: [DirectedEdge]) -> Int {
        var indegree = ContiguousArray<Int>(repeating: 0, count: vertexCount)
        var outCount = ContiguousArray<Int>(repeating: 0, count: vertexCount)
        for e in edges {
            indegree[e.to] += 1
            outCount[e.from] += 1
        }
        var rowStart = ContiguousArray<Int>(repeating: 0, count: vertexCount + 1)
        for i in 0..<vertexCount { rowStart[i + 1] = rowStart[i] + outCount[i] }
        var cursor = rowStart
        var flatTargets = ContiguousArray<Int>(repeating: 0, count: edges.count)
        for e in edges {
            flatTargets[cursor[e.from]] = e.to
            cursor[e.from] += 1
        }
        var queue = ContiguousArray<Int>()
        for i in 0..<vertexCount where indegree[i] == 0 { queue.append(i) }
        var head = 0
        while head < queue.count {
            let u = queue[head]
            head += 1
            for idx in rowStart[u]..<rowStart[u + 1] {
                let v = flatTargets[idx]
                indegree[v] -= 1
                if indegree[v] == 0 { queue.append(v) }
            }
        }
        return head
    }
}
