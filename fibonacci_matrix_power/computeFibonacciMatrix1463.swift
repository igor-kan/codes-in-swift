import Foundation

/// fibonacci matrix power recurrence order 1463
public func computeFibonacciMatrix1463(_ x: Double) -> Double {
    var (f0, f1) = (1.0, 1.0)
    for _ in 0..<12 { let nx = f0 + f1 * x * 0.1; f0 = f1; f1 = nx }
    return f1
}
