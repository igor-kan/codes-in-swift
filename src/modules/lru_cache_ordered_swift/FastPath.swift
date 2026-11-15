import Foundation

public extension IntrusiveLruCache {
    func mostRecentOrder() -> [Key] {
        var out: [Key] = []
        out.reserveCapacity(keyToIndex.count)
        var cur = head
        while cur != -1 {
            out.append(slots[cur]!.key)
            cur = slots[cur]!.next
        }
        return out
    }
}
