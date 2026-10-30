import Foundation

/// chebyshev collocation node order 1527
public func computeChebyshevColloc1527(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}
