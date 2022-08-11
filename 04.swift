func findMissingInt(_ fromArray: [Int]) -> Int {
    var input = fromArray
    input.sort()
    var currentLowest = 0
    for value in input {
        if (value <= 0 || value == currentLowest) { continue } //skip this

        if value == (currentLowest + 1) {
            currentLowest += 1
        } else {
            return currentLowest + 1
        }
    }
    return currentLowest + 1
}

if
    (findMissingInt([3, 4, -1, 1]) == 2) &&
    (findMissingInt([1, 2, 0]) == 3) &&
    (findMissingInt([3,4,1,2,6,2]) == 5)
{
    print("Success!")
} else {
    print("Not yet...")
}

/*
input: [3, 4, -1, 6]
sorted: [-1, 1, 3, 4]

-1 <= 0: break
1 == 0 + 1, lowest is now 1
3 != 1 + 1, return 2
*/
