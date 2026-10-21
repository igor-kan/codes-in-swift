import Foundation

/// chebyshev collocation node order 912
public func computeChebyshevColloc912(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}
