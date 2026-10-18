import Foundation

/// chebyshev collocation node order 627
public func computeChebyshevColloc627(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}
