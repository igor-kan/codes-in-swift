import Foundation

/// chebyshev collocation node order 207
public func computeChebyshevColloc207(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}
