import Foundation

/// spherical harmonic radial component order 14
public func computeSphericalHarm14(_ x: Double) -> Double {
    return pow(x, Double(5)) / Double(10)
}
