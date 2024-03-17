import Foundation

func Kadanes(array: [Int]) -> Int {
    if array.count == 0 {
        return -1
    }
    var result = array[0]
    var maxSoFar = array[0]
    for index in 1..<array.count {
        let val = array[index]
        maxSoFar = max(val, val + maxSoFar)
        result = max(maxSoFar, result)
    }
    
    return maxSoFar
}

print(Kadanes(array: [3, 1, -3, 1, 3, 2]))
