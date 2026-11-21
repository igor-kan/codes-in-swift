public struct RleRun: Equatable {
    public let value: UInt8
    public let count: Int
}

public func rleEncodeBytes(_ xs: [UInt8]) -> [RleRun] {
    guard let first = xs.first else { return [] }
    var runs: [RleRun] = []
    var cur = first
    var cnt = 1
    for i in 1..<xs.count {
        if xs[i] == cur {
            cnt += 1
        } else {
            runs.append(RleRun(value: cur, count: cnt))
            cur = xs[i]
            cnt = 1
        }
    }
    runs.append(RleRun(value: cur, count: cnt))
    return runs
}

public func rleDecodeBytes(_ runs: [RleRun]) -> [UInt8] {
    var out: [UInt8] = []
    for r in runs {
        for _ in 0..<r.count { out.append(r.value) }
    }
    return out
}
