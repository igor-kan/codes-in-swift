import Foundation

/// spherical harmonic radial component order 1929
public func computeSphericalHarm1929(_ x: Double) -> Double {
    return pow(x, Double(5)) / Double(10)
}
