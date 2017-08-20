import Foundation

var testcase = readLine()!.components(separatedBy: " ")
var answerArray = [[Int]]()

for item in testcase
{
    print(item)
}

for numbersOfLines in 1...Int(testcase[0])!
{
    var numbersInLines = readLine()!.components(separatedBy: " ")
    var numbers = [Int]()
    
    for number in numbersInLines
    {
        numbers.append(Int(number)!)
    }
    
    answerArray.append(numbers)
    
}

for index in 1...Int(testcase[1])!
{
    var answer = ""
    
    for array in answerArray
    {
        answer += String(array[index - 1]) + " "
    }
    
    print(answer)
    
}