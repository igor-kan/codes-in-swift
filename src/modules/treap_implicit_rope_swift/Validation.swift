import Foundation

public func validateSliceBounds(lo: Int, hi: Int, count: Int) throws {
    if lo < 0 || hi >= count || lo > hi {
        throw ImplicitTreapError.rangeOutOfBounds(lo: lo, hi: hi, count: count)
    }
}
