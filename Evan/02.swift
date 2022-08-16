/*
Given an array of integers, return a new array such that each element at index i of the new array is
the product of all the numbers in the original array except the one at i.

For example, if our input was [1, 2, 3, 4, 5], the expected output would be [120, 60, 40, 30, 24]. If
our input was [3, 2, 1], the expected output would be [2, 3, 6].

Follow-up: what if you can't use division?
*/

func arrayProduct(_ input: [Int]) -> [Int] {
	let totalProduct = input.reduce(1, { return $0 * $1 })
	return input.map({ return totalProduct / $0 })
}

func arrayProductNoDivision(_ input: [Int]) -> [Int] {
	return input.map { item in
		let index = input.firstIndex(of: item)!
		var modifiedInput = input
		modifiedInput.removeSubrange(index...index)
		return modifiedInput.reduce(1, { return $0 * $1 })
	}
}

if (
	arrayProductNoDivision([1, 2, 3, 4, 5]) == [120, 60, 40, 30, 24] &&
	arrayProductNoDivision([3, 2, 1]) == [2, 3, 6]
) {
	print("Success!")
} else {
	print("Needs work...")
}