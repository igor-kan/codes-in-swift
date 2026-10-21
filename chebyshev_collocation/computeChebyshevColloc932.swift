import Foundation

/// chebyshev collocation node order 932
public func computeChebyshevColloc932(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}
