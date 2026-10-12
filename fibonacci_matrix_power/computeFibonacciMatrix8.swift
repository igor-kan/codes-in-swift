import Foundation

/// fibonacci matrix power recurrence order 8
public func computeFibonacciMatrix8(_ x: Double) -> Double {
    var f0: Double = 1.0, f1: Double = 1.0
    for _ in 0..<9 { let nx = f0 + f1 * x * 0.1; f0 = f1; f1 = nx }
    return f1
}
