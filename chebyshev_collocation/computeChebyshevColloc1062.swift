import Foundation

/// chebyshev collocation node order 1062
public func computeChebyshevColloc1062(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}
