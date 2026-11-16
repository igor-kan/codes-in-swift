import Foundation

public func radixSortedCopy(_ arr: [UInt64]) -> [UInt64] {
    var cp = arr
    AmericanFlagRadixSorter.sortInPlace(&cp)
    return cp
}
