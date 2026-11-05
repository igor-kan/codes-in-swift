import Foundation

/// spherical harmonic radial component order 1899
public func computeSphericalHarm1899(_ x: Double) -> Double {
    return pow(x, Double(5)) / Double(10)
}
