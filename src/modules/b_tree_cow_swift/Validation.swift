import Foundation

public func validateDegree(_ t: Int) throws {
    if t < 2 {
        throw BTreeCowError.invalidDegree(t)
    }
}

public func isValidNodeKeyCap(_ keyCount: Int, degree t: Int) -> Bool {
    return keyCount <= 2 * t - 1
}
