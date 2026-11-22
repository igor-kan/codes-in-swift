public struct IntSpan: Equatable {
    public var start: Int
    public var end: Int
}

public func mergeSpans(_ raw: [IntSpan]) -> [IntSpan] {
    guard !raw.isEmpty else { return [] }
    let sorted = raw.sorted { $0.start == $1.start ? $0.end < $1.end : $0.start < $1.start }
    var out = [sorted[0]]
    for sp in sorted.dropFirst() {
        if sp.start <= out[out.count - 1].end {
            out[out.count - 1].end = max(out[out.count - 1].end, sp.end)
        } else {
            out.append(sp)
        }
    }
    return out
}
