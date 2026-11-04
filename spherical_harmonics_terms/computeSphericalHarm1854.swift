import Foundation

/// spherical harmonic radial component order 1854
public func computeSphericalHarm1854(_ x: Double) -> Double {
    return pow(x, Double(5)) / Double(10)
}
