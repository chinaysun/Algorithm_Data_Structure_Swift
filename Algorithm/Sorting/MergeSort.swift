class MergeSort
{
    func merge(_ arr:inout [Int],_ l:Int,_ m:Int,_ r:Int)
    {
        var i = l
        var j = m + 1
        
        while i <= m && j <= r
        {
            if arr[i] <= arr[j]
            {
                i += 1
                
            }else{
                
                var temp = arr[i]
                arr[i] = arr[j]
                arr[j] = temp
                j += 1
            }
        }

        
    }
    
    func mergeSort(_ arr:inout [Int],_ l:Int,_ r:Int)
    {
        if l < r
        {
            let m = (l + r)/2
            mergeSort(&arr,l,m)
            mergeSort(&arr,m+1,r)
            merge(&arr,l,m,r)
        }
    }
   
    
}
