import Foundation

/// chebyshev collocation node order 147
public func computeChebyshevColloc147(_ x: Double) -> Double {
    return cos(Double.pi * 7.0 / 8.0) * x
}
