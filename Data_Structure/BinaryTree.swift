import Foundation

class BinaryTree:NSObject
{
    
    var root:TreeNode!
    
    init(withNode node:TreeNode)
    {
        self.root = node
    }
    
    // poistion = "LLR"
    func addNode(position:String,node:TreeNode)
    {
        var tempNode:TreeNode = self.root
        
        for character in position.characters
        {
            if character == "L"
            {
                if tempNode.leftChild == nil
                {
                    tempNode.addChild(onSide: "L", node: node)
                }else
                {
                    tempNode = tempNode.leftChild!
                }
                
            }else if character == "R"
            {
                if tempNode.rightChild == nil
                {
                    tempNode.addChild(onSide: "R", node: node)
                    
                }else
                {
                    tempNode = tempNode.rightChild!
                }
            }
            
        }
    }
    
    func getHeightOfTree(node:TreeNode?)->Int
    {
        if node == nil
        {
            return 0
        }
        
        return 1 + max(getHeightOfTree(node:node!.leftChild), getHeightOfTree(node: node!.rightChild))
        
    }
    
    func diameter(node:TreeNode?)->Int
    {
        if node == nil
        {
            return 0
        }
        
        var lheight = self.getHeightOfTree(node: node?.leftChild)
        var rheight = self.getHeightOfTree(node: node?.rightChild)
        
        var ldiameter = self.diameter(node: node?.leftChild)
        var rdiameter = self.diameter(node: node?.rightChild)
        
        return max(lheight + rheight + 1, max(ldiameter, rheight))
    }
    
    
}

class TreeNode:NSObject
{
    var data:Int!
    var leftChild:TreeNode?
    var rightChild:TreeNode?
    
    init(withValue value:Int)
    {
        self.data = value
    }
    
    func addChild(onSide side:String,node:TreeNode)
    {
        if side == "L"
        {
            self.leftChild = node
            
        }else if side == "R"
        {
            self.rightChild = node
        }
    }

}



