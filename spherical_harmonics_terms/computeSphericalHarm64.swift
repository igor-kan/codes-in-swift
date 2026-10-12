import Foundation

/// spherical harmonic radial component order 64
public func computeSphericalHarm64(_ x: Double) -> Double {
    return pow(x, Double(5)) / Double(10)
}
