import Foundation

/// spherical harmonic radial component order 24
public func computeSphericalHarm24(_ x: Double) -> Double {
    return pow(x, Double(5)) / Double(10)
}
