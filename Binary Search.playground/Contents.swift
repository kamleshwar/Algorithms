import UIKit
import PlaygroundSupport


func binarySearch(_ arr: [Int], item: Int) -> Int {
    var result = -1
    var left = 0
    var right = arr.count
    
    while left < right {
        var mid = (right + left) / 2
        if arr[mid] == item {
            result = arr[mid]
            break
        } else if item > mid {
            left = mid + 1
        } else {
            right = mid - 1
        }
    }
    return result
}
// this will searchi n O(long(n))

print(binarySearch([1,2,4,5,6,8,9,12,14,16,23,56,78,93], item: 2)) // Number is in First half
print(binarySearch([1,2,4,5,6,8,9,12,14,16,23,56,78,93], item: 93)) // Number is in second help
print(binarySearch([1,2,4,5,6,8,9,12,14,16,23,56,78,93], item: 59)) // Number not in list
print(binarySearch([], item: 59)) // empty array
print(binarySearch([1], item: 1)) // Single item with number present
print(binarySearch([1], item: 2)) // Single item with number not present
