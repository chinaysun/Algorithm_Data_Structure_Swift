class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        
        var diffDictionary = [Int:Int]()
        
        for index in 0...nums.count-1
        {
         
            diffDictionary[nums[index]] = index
            
        }
        
        
        for index in 0...nums.count-1
        {
            let diff = target - nums[index]
            
            if let numbs = diffDictionary[diff]
            {
               if index != numbs
                {
                    return [index,numbs]
                }
            }
        }
        
        return [0,0]   
       
    }
    
    
}