import UIKit

func permutations(array: [Int]) -> [[Int]] {
    var result = [[Int]]()
    helper(array: array, current: [], result: &result)
    return result
}

func helper(array: [Int], current: [Int], result: inout [[Int]]) {
    if array.count == 0 {
        result.append(current)
    } else {
        for i in 0..<array.count {
            var newArray = array
            newArray.remove(at: i)
            let np = current + [array[i]]
            helper(array: newArray, current: np, result: &result)
        }
    }
}

print(permutations(array: [1,2,3]))
