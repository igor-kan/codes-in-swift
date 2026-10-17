import Foundation

/// chebyshev collocation node order 532
public func computeChebyshevColloc532(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}
