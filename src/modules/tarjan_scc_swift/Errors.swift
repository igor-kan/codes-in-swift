public enum ModError: Error, Sendable, Equatable {
    case emptyInput
    case outOfBounds(Int, Int)
    case invalidInput(String)
    case invariantViolation(String)
}
