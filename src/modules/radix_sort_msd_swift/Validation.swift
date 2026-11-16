import Foundation

public func isStrictlySorted(_ arr: [UInt64]) -> Bool {
    guard arr.count > 1 else { return true }
    for i in 1..<arr.count where arr[i - 1] > arr[i] { return false }
    return true
}
