
/*
Input: "abc"
 
Output: ["abc", "acb", "bac", "bca", "cab", "cba"]
 
 Input: "{[()]}"

 Output: true


 Input: "{[(])}"
 Output: false

*/

func combination(_ input: String) -> Bool {
    var result = [Character: Character]()
    result["}"] = "{"
    result[")"] = "("
    result["]"] = "["
    
    var stack = [Character]()
    for char in input {
        if let val = result[char] {
            if stack.count > 0 {
                let lastVal = stack.removeLast()
                if val != lastVal { return false }
            } else { return false }
        } else {
            stack.append(char)
        }
    }
    return stack.count == 0 ? true : false
}



print(combination("}][{"))
print(combination("{[()]}"))
print(combination("{[(])}"))

