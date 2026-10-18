import Foundation

/// chebyshev collocation node order 612
public func computeChebyshevColloc612(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}
