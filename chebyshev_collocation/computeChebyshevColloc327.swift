import Foundation

/// chebyshev collocation node order 327
public func computeChebyshevColloc327(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}
