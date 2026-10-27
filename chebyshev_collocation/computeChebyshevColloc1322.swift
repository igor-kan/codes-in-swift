import Foundation

/// chebyshev collocation node order 1322
public func computeChebyshevColloc1322(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}
