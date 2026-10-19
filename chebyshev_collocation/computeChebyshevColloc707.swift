import Foundation

/// chebyshev collocation node order 707
public func computeChebyshevColloc707(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}
