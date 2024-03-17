import PlaygroundSupport

// Node Class
class Node {
    let val: Int
    let left: Node?
    let right: Node?
    
    init(val: Int, left: Node? = nil, right: Node? = nil) {
        self.val = val
        self.left = left
        self.right = right
    }
}


// Depth=First Search (DFS)
func dfs(_ root: Node?, item: Int) -> Node? {
    var result: Node?
    func helper(_ node: Node?) {
        guard let node = node, result == nil else {
            return
        }
        if node.val == item { result = node }
        
        helper(node.left)
        helper(node.right)
    }
    helper(root)
    return result
}

// Breadth-First Search (BFS)
func bfs(_ root: Node?, item: Int) -> Node? {
    guard let root = root else { return nil }
    var result: Node?
    var queue = [root]
    while queue.count > 0 {
        var current = queue.removeFirst()
        if current.val == item {
            result = current
            break
        } else {
            if let left = current.left {
                queue.append(left)
            }
            if let right = current.right {
                queue.append(right)
            }
        }
    }
    return result
}


/* 
    Setting up Tree
            1
 
        /       \
 
       2         5
 
     /  \       /  \
    3    4     6    7
 
 */

let leftLeft = Node(val: 3)
let leftRight = Node(val: 4)
let left = Node(val: 2, left: leftLeft, right: leftRight)

let rightLeft = Node(val: 6)
let rightRight = Node(val: 7)

let right = Node(val: 5, left: rightLeft, right: rightRight)
let root = Node(val: 1, left: left, right: right)

print(dfs(root, item: 4)?.val ?? -1) // Item in left node
print(bfs(root, item: 4)?.val ?? -1) // Item in left node


print(dfs(root, item: 1)?.val ?? -1) // first item
print(bfs(root, item: 1)?.val ?? -1) // first item

print(dfs(root, item: 9)?.val ?? -1) // not exists
print(bfs(root, item: 9)?.val ?? -1) // not exists

