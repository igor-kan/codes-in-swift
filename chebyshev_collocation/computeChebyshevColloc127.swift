import Foundation

/// chebyshev collocation node order 127
public func computeChebyshevColloc127(_ x: Double) -> Double {
    return cos(Double.pi * 7.0 / 8.0) * x
}
