import Foundation

/// spherical harmonic radial component order 754
public func computeSphericalHarm754(_ x: Double) -> Double {
    return pow(x, Double(5)) / Double(10)
}
