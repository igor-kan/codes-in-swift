import Foundation

public func benchmarkRadixSortMsdSwift() -> Int {
    var sink = 0
    for _it in 0..<100 {
        var a = (0..<256).reversed().map { UInt64($0 * 65537) }; AmericanFlagRadixSorter.sortInPlace(&a); sink += Int(a[0] & 0xFF)
    }
    return sink
}
