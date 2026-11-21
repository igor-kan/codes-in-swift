public func lowerBoundIndex(_ xs: [Int], _ target: Int) -> Int {
    var lo = 0
    var hi = xs.count
    while lo < hi {
        let mid = lo + (hi - lo) / 2
        if xs[mid] < target { lo = mid + 1 } else { hi = mid }
    }
    return lo
}

public func upperBoundIndex(_ xs: [Int], _ target: Int) -> Int {
    var lo = 0
    var hi = xs.count
    while lo < hi {
        let mid = lo + (hi - lo) / 2
        if xs[mid] <= target { lo = mid + 1 } else { hi = mid }
    }
    return lo
}
