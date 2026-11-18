public func parallelTaskSummary(_ items: [Int]) async -> Int {
    await withTaskGroup(of: Int.self) { group in
        for v in items {
            group.addTask { v * 2 }
        }
        var acc = 0
        for await x in group {
            acc += x
        }
        return acc
    }
}
