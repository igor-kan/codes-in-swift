import Foundation

public enum WaveTaskExecutor {
    public static func executeWaves(
        schedule: TopologicalSchedule,
        work: @Sendable @escaping (Int) async -> Int
    ) async -> [Int] {
        var outputs = Array(repeating: 0, count: schedule.order.count)
        for wave in schedule.waves {
            await withTaskGroup(of: (Int, Int).self) { group in
                for taskId in wave {
                    group.addTask { return (taskId, await work(taskId)) }
                }
                for await (id, val) in group { outputs[id] = val }
            }
        }
        return outputs
    }
}
