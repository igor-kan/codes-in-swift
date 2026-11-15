import Foundation

public enum LruCacheError: Error, Sendable, Equatable {
    case nonPositiveCapacity(Int)
    case corruptedSlabSlot(index: Int)

    public var isCapacityError: Bool {
        if case .nonPositiveCapacity = self { return true }
        return false
    }
}
