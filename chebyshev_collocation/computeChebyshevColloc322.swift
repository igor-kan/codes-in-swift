import Foundation

/// chebyshev collocation node order 322
public func computeChebyshevColloc322(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}
