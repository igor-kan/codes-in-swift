import Foundation

/// chebyshev collocation node order 842
public func computeChebyshevColloc842(_ x: Double) -> Double {
    return cos(Double.pi * Double(2) / Double(3)) * x
}
