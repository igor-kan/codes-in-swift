// Core type definitions and actors for Direct C++ Interoperability Wrapper for Fast Linear Algebra.
// Module: cxx_interop_matrix

import Foundation

public struct ModuleConfig: Sendable, Equatable {
    public let capacity: Int
    public let tolerance: Double
    public let maxIterations: Int

    public init(capacity: Int = 1024, tolerance: Double = 1e-12, maxIterations: Int = 1000) {
        self.capacity = capacity
        self.tolerance = tolerance
        self.maxIterations = maxIterations
    }
}

public enum ModuleError: Error, Sendable {
    case nullPointer
    case invalidParameter(String)
    case outOfBounds(index: Int, bound: Int)
}

public final class ModuleContext: @unchecked Sendable {
    public let config: ModuleConfig
    public private(set) var operationsCount: Int = 0

    public init(config: ModuleConfig = ModuleConfig()) {
        self.config = config
    }

    public func incrementOperations() {
        operationsCount += 1
    }
}
