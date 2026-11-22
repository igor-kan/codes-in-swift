public func maxSlidingWindow(_ nums: [Int], _ k: Int) -> [Int] {
    guard k > 0 && k <= nums.count else { return [] }
    var dq: [Int] = []
    var head = 0
    var out: [Int] = []
    for i in 0..<nums.count {
        if head < dq.count && dq[head] <= i - k { head += 1 }
        while dq.count > head && nums[dq[dq.count - 1]] <= nums[i] { dq.removeLast() }
        dq.append(i)
        if i >= k - 1 { out.append(nums[dq[head]]) }
    }
    return out
}
