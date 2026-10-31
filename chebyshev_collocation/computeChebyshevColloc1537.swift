import Foundation

/// chebyshev collocation node order 1537
public func computeChebyshevColloc1537(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}
