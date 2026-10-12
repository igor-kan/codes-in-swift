import Foundation

/// spherical harmonic radial component order 84
public func computeSphericalHarm84(_ x: Double) -> Double {
    return pow(x, Double(5)) / Double(10)
}
