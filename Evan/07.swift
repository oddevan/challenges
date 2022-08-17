/*
Given the mapping a = 1, b = 2, ... z = 26, and an encoded message, count the number of ways it can be decoded.

For example, the message '111' would give 3, since it could be decoded as 'aaa', 'ka', and 'ak'.

You can assume that the messages are decodable. For example, '001' is not allowed.
*/

func addIndexOf(_ needle: String.Element, inString haystack: String, toResults results: [String.Index]) -> [String.Index] {
	guard let index = haystack.firstIndex(of: needle) else {
		return results
	}

	let newResults = results + [index]
	//except swift is weird and has index classes instead of just ints and i don't even
	return addIndexOf(needle, inString: haystack.suffix(index.next), toResults: results)
}

func numPosibilities(_ input: String) -> Int {
	print(addIndexOf("8", inString: input, toResults: []))
	// Always 1: every digit is one letter
	// Every 2-digit possibility (numbers 11-19, 21-26) adds x2
	// - 1 for every overlap (111 can be 'ka' or 'ak' but not 'kk')
	// Formula: p = 2 digit combos, l = overlapping combos 2^p - l
	return 0
}

if
    (numPosibilities("111") == 3) &&
    (numPosibilities("15784624813") == 8)
{
    print("Success!")
} else {
    print("Not yet...")
}