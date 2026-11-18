public func requireNonEmpty(_ cnt: Int) throws {
    if cnt <= 0 {
        throw ModError.emptyInput
    }
}

public func requireInBounds(_ idx: Int, _ count: Int) throws {
    if idx < 0 || idx >= count {
        throw ModError.outOfBounds(idx, count)
    }
}
