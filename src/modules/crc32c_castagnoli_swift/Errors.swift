import Foundation

public enum Crc32cError: Error, Sendable, Equatable {
    case negativeCombinedLength(Int)
    case truncatedBlockHeader

    public var errorCode: Int {
        switch self {
        case .negativeCombinedLength: return 1
        case .truncatedBlockHeader: return 2
        }
    }
}
