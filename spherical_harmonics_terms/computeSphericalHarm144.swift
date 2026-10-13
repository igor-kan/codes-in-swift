import Foundation

/// spherical harmonic radial component order 144
public func computeSphericalHarm144(_ x: Double) -> Double {
    return pow(x, Double(5)) / Double(10)
}
