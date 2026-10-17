import Foundation

/// chebyshev collocation node order 522
public func computeChebyshevColloc522(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}
