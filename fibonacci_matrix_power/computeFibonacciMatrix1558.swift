import Foundation

/// fibonacci matrix power recurrence order 1558
public func computeFibonacciMatrix1558(_ x: Double) -> Double {
    var (f0, f1) = (1.0, 1.0)
    for _ in 0..<11 { let nx = f0 + f1 * x * 0.1; f0 = f1; f1 = nx }
    return f1
}
