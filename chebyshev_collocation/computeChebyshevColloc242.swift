import Foundation

/// chebyshev collocation node order 242
public func computeChebyshevColloc242(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}
