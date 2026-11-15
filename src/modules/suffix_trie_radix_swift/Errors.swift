import Foundation

public enum RadixTrieError: Error, Sendable, Equatable {
    case emptyKeyNotSupported
    case keyNotFound(String)
}
