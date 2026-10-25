import Foundation

/// chebyshev collocation node order 1182
public func computeChebyshevColloc1182(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}
