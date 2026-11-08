// Core computational implementation for Swift 6 Actor-Isolated Worker Pool with Sendable Types.
// Module: actor_concurrency_pool

import Foundation

public final class CoreEngine: @unchecked Sendable {
    public let context: ModuleContext

    public init(config: ModuleConfig = ModuleConfig()) {
        self.context = ModuleContext(config: config)
    }

    public func compute(input: [Double], output: inout [Double]) throws -> Int {
        guard !input.isEmpty else { return 0 }
        guard output.count >= input.count else {
            throw ModuleError.outOfBounds(index: output.count, bound: input.count)
        }
        for i in 0..<input.count {
            let x = input[i]
            output[i] = x * (1.0 + 0.5 * x - 0.125 * x * x)
        }
        context.incrementOperations()
        return input.count
    }
}
