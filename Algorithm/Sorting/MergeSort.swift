class MergeSort
{
    func mergeArray(_ arr:inout [Int],_ l:Int,_ m:Int,_ r:Int)
    {
      
        var leftArr = [Int]()
        var rightArr = [Int]()
        
        for i in l...m
        {
            leftArr.append(arr[i])
        }
        
        for j in (m + 1)...r
        {
            rightArr.append(arr[j])
        }
        
        
        var i = 0
        var j = 0
        var index = l
        
        
        
        while i <= m - l && j <= r - m - 1
        {
            if leftArr[i] <= rightArr[j]
            {
                arr[index] = leftArr[i]
                i += 1
                
            }else{
                
                arr[index] = rightArr[j]
                j += 1
            }
            
            index += 1
        }
        
        while i <= m - l
        {
            arr[index] = leftArr[i]
            i += 1
            index += 1
        }
        
        while j <= r - m - 1
        {
            arr[index] = rightArr[j]
            j += 1
            index += 1
        }

        
    }
    
    func mergeSort(_ arr:inout [Int],_ l:Int,_ r:Int)
    {
        if l < r
        {
            let m = (l + r)/2
            mergeSort(&arr,l,m)
            mergeSort(&arr,m+1,r)
            mergeArray(&arr,l,m,r)
        }
    }
   
    
}
