import UIKit

func productSum(array: [Any], multiplier: Int) -> Int {
    var sum = 0

    for element in array {
        if let val = element as? Array<Any> {
            sum += productSum(array: val, multiplier: multiplier + 1)
        } else if let val = element as? Int {
            sum += val
        }
    }
    
    
    return sum * multiplier
}

print(productSum(array: [5,2,[2,-1], 3, [6, [2, 8], 4]], multiplier: 3))
