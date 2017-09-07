// Q20.Valid Parentheses

// Given a string containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
// The brackets must close in the correct order, "()" and "()[]{}" are all valid but "(]" and "([)]" are not.



// Hint: Consider LIFO


class Solution {
    func isValid(_ s: String) -> Bool {
        
        let bracketDict:[Character:Character] = [ "(":")","{":"}","[":"]" ]
       
        var firstPartOfBrackets = [Character]()
        
        for chara in s.characters
        {
            
            if chara == Character("(") || chara == Character("{") || chara == Character("[")
            {
                firstPartOfBrackets.append(chara)
            }
            
            if chara == Character(")") || chara == Character("}") || chara == Character("]")
            {
                if firstPartOfBrackets.count > 0
                {
                    
                    if let lastBracket = firstPartOfBrackets.last
                    {
                        if chara != bracketDict[lastBracket]
                        {
                            return false
                            
                        }else
                        {
                            firstPartOfBrackets.remove(at: firstPartOfBrackets.count - 1)
                        }
                      
                    }
                    
                    
                    
                }else
                {
                    return false
                }
            }
            
            
        }
        
        if firstPartOfBrackets.count > 0
        {
            return false
        }

        
        return true
        
    }
    
    
    
}