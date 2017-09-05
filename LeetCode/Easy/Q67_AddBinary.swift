/* Q67. Add Binary
 *
 * Given two binary strings, return their sum (also a binary string).
 * For example,
 * a = "11"
 * b = "1"
 * Return "100".
 *
 * Solution 1 just consider it on mathmatical way
 * Solution 2 using the libary radix function - This may fail because out of range of Int64
 */


 class Solution {
    func addBinary(_ a: String, _ b: String) -> String {
        
        let charOfA = Array(a.characters.reversed())
        let charOfB = Array(b.characters.reversed())
        
        var index = 0
        
        var newCharList = ""
        var carry = 0
        
        while index < charOfA.count || index < charOfB.count
        {
            let valOfA = index < charOfA.count ? charOfA[index] : Character("0")
            let valOfB = index < charOfB.count ? charOfB[index] : Character("0")
            
            let val = Int(String(valOfA))! + Int(String(valOfB))! + carry
            carry = 0
            
            switch val {
            case 0:
                newCharList.append("0")
            case 1:
                newCharList.append("1")
            case 2:
                newCharList.append("0")
                carry = 1
            case 3:
                newCharList.append("1")
                carry = 1
            default:
                break
            }
            
            index += 1
    
        }
        
        if carry == 1
        {
            newCharList.append("1")
        }
        
        
        
        return String(newCharList.characters.reversed())
        
        
        
        
    }

	func addBinary2(_ a: String, _ b: String) -> String {

		guard let _a = Int(a,radix:2), let _b = Int(b,radix:2) else { return "0"}
        
        return String(_a + _b,radix:2)

	}

}
