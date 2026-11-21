public func neumaierSum(_ xs: [Double]) -> Double {
    var sum = 0.0
    var comp = 0.0
    for x in xs {
        let t = sum + x
        if abs(sum) >= abs(x) {
            comp += (sum - t) + x
        } else {
            comp += (x - t) + sum
        }
        sum = t
    }
    return sum + comp
}
