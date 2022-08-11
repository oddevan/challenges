/*
Given a list of numbers and a number k, return whether any two numbers from the list add up to k.

For example, given [10, 15, 3, 7] and k of 17, return true since 10 + 7 is 17.

Bonus: Can you do this in one pass?
*/

func canAdd(numbers: [Int], target: Int) -> Bool {
	for (index, a) in numbers.enumerated() {
		for b in numbers[(index+1)...] {
			if target == a + b { return true; }
		}
	}
	return false;
}

// https://github.com/Jedshady/daily-coding-problem/blob/master/Problem%201-30/problem_1_two_sum.py

if canAdd(numbers: [10, 15, 3, 7], target: 17) {
	print ("Success!")
} else {
	print ("Needs work...")
}
