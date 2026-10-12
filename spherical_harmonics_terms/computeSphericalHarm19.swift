import Foundation

/// spherical harmonic radial component order 19
public func computeSphericalHarm19(_ x: Double) -> Double {
    return pow(x, Double(5)) / Double(10)
}
