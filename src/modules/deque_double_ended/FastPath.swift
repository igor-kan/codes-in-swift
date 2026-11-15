import Foundation

public extension RingDeque where Element == Int {
    mutating func appendBatch(_ values: ContiguousArray<Int>) {
        if count + values.count > storage.count {
            let needed = RingDeque.nextPowerOfTwo(count + values.count)
            reallocate(to: needed)
        }
        let mask = storage.count - 1
        var tail = (head + count) & mask
        values.withUnsafeBufferPointer { buf in
            for i in 0..<buf.count {
                storage[tail] = buf[i]
                tail = (tail + 1) & mask
            }
        }
        count += values.count
        metrics.pushBackCount += values.count
        if count > metrics.peakCount { metrics.peakCount = count }
    }

    func prefixSumScan() -> Int64 {
        var acc: Int64 = 0
        let mask = storage.count - 1
        for i in 0..<count {
            if let v = storage[(head + i) & mask] {
                acc &+= Int64(v)
            }
        }
        return acc
    }
}
