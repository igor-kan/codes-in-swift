import Foundation

public func validateInterval(_ iv: ClosedInterval) throws {
    if iv.lo > iv.hi {
        throw IntervalTreeError.invertedBounds(lo: iv.lo, hi: iv.hi)
    }
}

public func isValidRange(lo: Int, hi: Int) -> Bool {
    return lo <= hi
}
