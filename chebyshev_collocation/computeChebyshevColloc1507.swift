import Foundation

/// chebyshev collocation node order 1507
public func computeChebyshevColloc1507(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}
