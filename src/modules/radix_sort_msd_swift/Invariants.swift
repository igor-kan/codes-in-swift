import Foundation

public func verifyRadixSortParity(_ input: [UInt64]) throws {
    let got = radixSortedCopy(input)
    let expected = input.sorted()
    if got != expected {
        throw RadixSwiftError.invariantViolation("MSD radix sort output differs from stdlib sort")
    }
}
