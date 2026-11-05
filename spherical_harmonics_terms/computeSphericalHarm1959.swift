import Foundation

/// spherical harmonic radial component order 1959
public func computeSphericalHarm1959(_ x: Double) -> Double {
    return pow(x, Double(5)) / Double(10)
}
