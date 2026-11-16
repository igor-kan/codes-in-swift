import Foundation

public struct AmericanFlagRadixSorter: UnsignedRadixSorter {
    public static func sorted(_ arr: [UInt64]) -> [UInt64] {
        var copy = arr
        sortInPlace(&copy)
        return copy
    }

    public static func sortInPlace(_ arr: inout [UInt64]) {
        guard arr.count > 1 else { return }
        sortSubarray(&arr, lo: 0, hi: arr.count, shift: 56)
    }

    private static func insertionSort(_ arr: inout [UInt64], lo: Int, hi: Int) {
        for i in (lo + 1)..<hi {
            let v = arr[i]
            var j = i - 1
            while j >= lo && arr[j] > v {
                arr[j + 1] = arr[j]
                j -= 1
            }
            arr[j + 1] = v
        }
    }

    private static func sortSubarray(_ arr: inout [UInt64], lo: Int, hi: Int, shift: Int) {
        if hi - lo <= 24 || shift < 0 {
            if hi - lo <= 24 { insertionSort(&arr, lo: lo, hi: hi) }
            return
        }
        var count = Array(repeating: 0, count: 256)
        for i in lo..<hi {
            let b = Int((arr[i] >> shift) & 0xFF)
            count[b] += 1
        }
        var start = Array(repeating: 0, count: 256)
        var nextPos = Array(repeating: 0, count: 256)
        var acc = lo
        for b in 0..<256 {
            start[b] = acc
            nextPos[b] = acc
            acc += count[b]
        }
        var curBucket = 0
        while curBucket < 256 {
            let endBucket = start[curBucket] + count[curBucket]
            while nextPos[curBucket] < endBucket {
                let idx = nextPos[curBucket]
                let destB = Int((arr[idx] >> shift) & 0xFF)
                if destB == curBucket {
                    nextPos[curBucket] += 1
                } else {
                    let targetIdx = nextPos[destB]
                    nextPos[destB] += 1
                    arr.swapAt(idx, targetIdx)
                }
            }
            curBucket += 1
        }
        if shift >= 8 {
            for b in 0..<256 where count[b] > 1 {
                sortSubarray(&arr, lo: start[b], hi: start[b] + count[b], shift: shift - 8)
            }
        }
    }
}
