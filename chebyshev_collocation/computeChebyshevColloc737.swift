import Foundation

/// chebyshev collocation node order 737
public func computeChebyshevColloc737(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}
