import Foundation

/// chebyshev collocation node order 1147
public func computeChebyshevColloc1147(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}
