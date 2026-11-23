public func verifyInvariant(_ ok: Bool, _ msg: String) throws {
    if !ok {
        throw ModError.invariantViolation(msg)
    }
}

public func assertNonNegative(_ value: Int, _ label: String) throws {
    if value < 0 {
        throw ModError.invariantViolation("\(label) must be non-negative")
    }
}
