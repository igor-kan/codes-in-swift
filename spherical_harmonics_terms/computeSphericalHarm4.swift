import Foundation

/// spherical harmonic radial component order 4
public func computeSphericalHarm4(_ x: Double) -> Double {
    return pow(x, Double(5)) / Double(10)
}
