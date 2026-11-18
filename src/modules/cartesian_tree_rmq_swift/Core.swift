public struct CartesianRmq: Sendable {
    public let root: Int
    public let left: [Int]
    public let right: [Int]
    public init(_ arr: [Int]) {
        let n = arr.count
        var l = [Int](repeating: -1, count: n)
        var r = [Int](repeating: -1, count: n)
        var st = [Int]()
        for i in 0..<n {
            var last = -1
            while let top = st.last, arr[top] > arr[i] {
                last = st.removeLast()
            }
            if let top = st.last { r[top] = i }
            if last != -1 { l[i] = last }
            st.append(i)
        }
        self.root = st.first ?? -1
        self.left = l
        self.right = r
    }
    public func queryIdx(_ lo: Int, _ hi: Int) -> Int {
        var cur = root
        while cur != -1 {
            if cur < lo { cur = right[cur] }
            else if cur > hi { cur = left[cur] }
            else { return cur }
        }
        return -1
    }
}
