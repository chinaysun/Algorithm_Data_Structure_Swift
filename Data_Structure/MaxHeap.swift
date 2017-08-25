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
        
    var max = array[1]
    array[1] = array[array.count-1]
    array.remove(at: 1)
    max_heapify(array: &array, root: 1, numberOfElements: array.count-1)
    return max
        
}

let myArray = [2,3,5,4,6,1,0]
let myHeapArray = build_maxHeap(array: myArray)
        
for i in 1...(myHeapArray.count - 1)
{
    print(myHeapArray[i],terminator: " ")
}


