import Foundation

/// chebyshev collocation node order 507
public func computeChebyshevColloc507(_ x: Double) -> Double {
    return cos(Double.pi * Double(7) / Double(8)) * x
}
