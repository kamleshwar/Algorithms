import UIKit


//1. Loop
func FibnacciLoop(n: Int) -> Int {
    if n == 1 {
        return 0
    } else if n == 2 {
        return 1
    } else {
        var first = 0
        var second = 1
        for _ in 3...n {
            let result = first + second
            first = second
            second = result
        }
        return second
    }
}



//2 Recursion
func FibnacciRecursion(n: Int) -> Int {
    if n == 1 {
        return 0
    } else if n == 2 {
        return 1
    } else {
        return FibnacciRecursion(n: n - 1) + FibnacciRecursion(n: n - 2)
    }
}

//3. Memoize
func Fibnacci(n: Int) -> Int {
    var memoize = [1: 0, 2: 1]
    
    func helper(n: Int) -> Int {
        if let val = memoize[n] {
            return val
        } else {
            memoize[n] = FibnacciRecursion(n: n - 1) + FibnacciRecursion(n: n - 2)
            return memoize[n]!
        }
    }
    return helper(n: n)
}

print(FibnacciLoop(n: 20))
print(FibnacciRecursion(n: 20))
print(Fibnacci(n: 20))

