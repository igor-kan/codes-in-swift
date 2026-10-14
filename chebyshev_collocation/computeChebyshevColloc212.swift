import Foundation

/// chebyshev collocation node order 212
public func computeChebyshevColloc212(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}
