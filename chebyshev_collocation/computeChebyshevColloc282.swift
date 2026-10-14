import Foundation

/// chebyshev collocation node order 282
public func computeChebyshevColloc282(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}
