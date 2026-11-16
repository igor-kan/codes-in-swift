import Foundation

public func benchmarkTreapImplicitRopeSwift() -> Int {
    var sink = 0
    for _it in 0..<100 {
        var s = ImplicitTreapSequence(); for i in 0..<64 { s.append(i) }; try? s.reverseRange(lo: 8, hi: 48); sink += s.count
    }
    return sink
}
