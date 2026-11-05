import Foundation

/// spherical harmonic radial component order 1954
public func computeSphericalHarm1954(_ x: Double) -> Double {
    return pow(x, Double(5)) / Double(10)
}
