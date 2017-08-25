/* Max Heap
 * Yu SUN
 * 25/08/2017
 */

import Foundation

func swap(array: inout [Int],index1:Int,index2:Int)
{
    let temp = array[index1]
    array[index1] = array[index2]
    array[index2] = temp
}
    
func max_heapify(array: inout [Int],root:Int,numberOfElements:Int)
{
    let left =  2*root
    let right = 2*root + 1
    var largest = root
        
        
        
    if left <= numberOfElements && array[largest] < array[left]
    {
        largest = left
    }
        
    if right <= numberOfElements && array[largest] < array[right]
    {
        largest = right
            
    }
        
    if largest != root
    {
        swap(array: &array, index1: root, index2: largest)
        max_heapify(array: &array, root: largest, numberOfElements: numberOfElements)
    }
        
        
}
    
func build_maxHeap(array:[Int])->[Int]
{
    var heapArray = [Int]()
    let numberOfElements = array.count
        
    //store the number of Elements in the array
    heapArray.append(numberOfElements)
        
    for i in 1...numberOfElements
    {
        heapArray.append(array[i-1])
        
    }
        
    for i in 0...(numberOfElements/2 - 1 )
    {
           let index = numberOfElements/2 - i
           max_heapify(array: &heapArray, root: index, numberOfElements: numberOfElements)
    }
        
    return heapArray
        
}

func extract_maximum(array:inout [Int])->Int
{
    if array.count == 1
    {
        return -1
    }
        
    let max = array[1]
    array[1] = array[array.count-1]
    array[0] = array[0] - 1
    array.remove(at: 1)
    max_heapify(array: &array, root: 1, numberOfElements: array.count-1)
    return max
        
}

func increase_value (array:inout [Int], index:Int,val:Int)
{

    array[index] = val
    var currentIndex = index
    
    
    
    while( currentIndex > 1 && array[currentIndex/2] < array[currentIndex])
    {
        swap(array: &array,index1:currentIndex/2,index2:currentIndex)
        currentIndex = currentIndex/2
    }
}

func insert_value (array:inout [Int], val:Int)
{
    array[0] = array[0] + 1
    array.append(-1) 
    increase_value (array:&array, index:array[0],val:val)
}


var testcase = Int(readLine()!)!
var originalArrayString = readLine()!.components(separatedBy: " ")
var originalArray = [Int]()

for elements in originalArrayString
{
    originalArray.append(Int(elements)!)
}

var myMaxHeap = build_maxHeap(array:originalArray)

var operationsCase = Int(readLine()!)!

for i in 1...operationsCase
{
    var operation = readLine()!.components(separatedBy: " ")
    
    if Int(operation.first!)! == 1
    {
        var val = Int(operation.last!)! 
        insert_value (array:&myMaxHeap, val:val)
    }
    
    if Int(operation.first!)! == 2
    {
        print(extract_maximum(array:&myMaxHeap))
    }
    
}


