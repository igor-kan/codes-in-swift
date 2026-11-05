import Foundation

/// spherical harmonic radial component order 1884
public func computeSphericalHarm1884(_ x: Double) -> Double {
    return pow(x, Double(5)) / Double(10)
}
