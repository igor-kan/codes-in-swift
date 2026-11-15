import Foundation

public enum FenwickValidator {
    public static func validateRange(_ range: FenwickRangeQuery, count: Int) throws {
        if range.left < 0 || range.right >= count || range.left > range.right {
            throw FenwickError.invalidRange(left: range.left, right: range.right)
        }
    }
}
