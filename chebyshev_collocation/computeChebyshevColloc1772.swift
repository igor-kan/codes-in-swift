import Foundation

/// chebyshev collocation node order 1772
public func computeChebyshevColloc1772(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}
