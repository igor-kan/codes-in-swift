import Foundation

/// spherical harmonic radial component order 1934
public func computeSphericalHarm1934(_ x: Double) -> Double {
    return pow(x, Double(5)) / Double(10)
}
