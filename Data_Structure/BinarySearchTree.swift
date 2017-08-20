import Foundation

class TreeNode
{
    var data:Int!
    var leftChild:TreeNode?
    var rightChild:TreeNode?
    
    init(withValue value:Int)
    {
        data = value
    }
    
}

class BinaryTree
{
    var root:TreeNode?
    
    func searchPositionToInsert(insertedNode:TreeNode,currentNode:TreeNode)
    {
        
        if insertedNode.data < currentNode.data
        {
            if currentNode.leftChild == nil
            {
                currentNode.leftChild = insertedNode
                
            }else
            {
                searchPositionToInsert(insertedNode:insertedNode,currentNode:currentNode.leftChild!)
            }
            
        }else if insertedNode.data > currentNode.data
        {
            if currentNode.rightChild == nil
            {
                currentNode.rightChild = insertedNode
                
            }else
            {
                searchPositionToInsert(insertedNode:insertedNode,currentNode:currentNode.rightChild!)
            }
            
        }
    }
    
    func searchNode(currentNode:TreeNode?,key:Int)
    {


        if let node = currentNode
        {

            if node.data == key
            {
                preorder(node: node)
            }
            
            if node.data < key
            {
                searchNode(currentNode: node.rightChild, key: key)
            }
            
            if node.data > key
            {
                searchNode(currentNode: node.leftChild, key: key)
            }
        }
        

    }
    
    func preorder(node currentNode:TreeNode?)
    {
        if let node = currentNode
        {
            print(node.data)
            preorder(node: node.leftChild)
            preorder(node: node.rightChild)
        }
        
    }
    
}


var testcase = Int(readLine()!)!
var numberList = readLine()!.components(separatedBy: " ")
let myBinaryTree = BinaryTree()

for nodes in numberList
{
    let node = TreeNode(withValue: Int(nodes)!)
    if myBinaryTree.root == nil
    {
        myBinaryTree.root = node
    }else
    {
        myBinaryTree.searchPositionToInsert(insertedNode: node, currentNode: myBinaryTree.root!)
    }
}

var key = Int(readLine()!)!

myBinaryTree.searchNode(currentNode: myBinaryTree.root!, key: key)


