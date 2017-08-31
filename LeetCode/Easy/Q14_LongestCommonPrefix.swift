/* Source: https://leetcode.com/problems/longest-common-prefix/description/
 * 
 * This question below has confused me. Is that possible some strings have 
 * one common prefix, while other strings have the different common prefix?
 * Need to choose the longest one?
 * 
 * Q: Write a function to find the longest common prefix string amongst an array of strings.
 *
 * Assume that the prefix we found must be included in all the strings in the array
 *
 */



import Foundation

class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        
        
        //Found the stortest String in the array
        var shortestString:String = ""
        var leghthOfShortest = Int.max
        
        for eachString in strs
        {
            var numberOfCharacters = eachString.characters.count
            
            if numberOfCharacters < leghthOfShortest
            {
                shortestString = eachString
                leghthOfShortest = numberOfCharacters
            }
        }
        
        
        var endIndexOfString = shortestString.endIndex
        
        while endIndexOfString != shortestString.startIndex 
        {
            var prefixString = shortestString.substring(to: endIndexOfString)
            
            var numberOfString = 0
            
            strs.forEach({
                
                eachString 
                
                in
                
                if eachString.hasPrefix(prefixString)
                {
                    numberOfString += 1
                }
                
            })
            
            if numberOfString == strs.count
            {
               return prefixString    
            }
            
            endIndexOfString = shortestString.index(before: endIndexOfString)
            
        }
        
        return ""
        
        
        
    }
}