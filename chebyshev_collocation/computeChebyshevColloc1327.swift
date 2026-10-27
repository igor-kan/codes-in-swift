import Foundation

/// chebyshev collocation node order 1327
public func computeChebyshevColloc1327(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}
