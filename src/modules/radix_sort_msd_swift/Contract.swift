import Foundation

public protocol UnsignedRadixSorter {
    static func sortInPlace(_ arr: inout [UInt64])
    static func sorted(_ arr: [UInt64]) -> [UInt64]
}
