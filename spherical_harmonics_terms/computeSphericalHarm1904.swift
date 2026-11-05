import Foundation

/// spherical harmonic radial component order 1904
public func computeSphericalHarm1904(_ x: Double) -> Double {
    return pow(x, Double(5)) / Double(10)
}
