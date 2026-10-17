import Foundation

/// chebyshev collocation node order 527
public func computeChebyshevColloc527(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}
