import Foundation

/// chebyshev collocation node order 947
public func computeChebyshevColloc947(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}
