/* Q70.Climbing Stairs
 *
 * You are climbing a stair case. It takes n steps to reach to the top.
 * Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?
 * Note: Given n will be a positive integer.
 *
 * Methods:
 * 1. Brute Force function -> Time Limit Exceeded
 * 2. We could Refine the method 1 via adding a memory to avoid duplicated computing
 * 3. Dynamic Programming
 *	  Onc can reach I step in two ways: Taking a single step from I - 1 Step / Taking a step of 2 from I - 2 Step
 *	  so reaching I is equal to sum of I - 1  + I - 2
 *
 * 4. Fibonacci Number Fib(n) = Fib(n-1) + Fib(n-2)
 *
 */

 class Solution_BruteForce {      
    func climbStairs(_ n: Int) -> Int
    {
        return climb(step: 0, totalSteps: n)
    }
    
    
    func climb(step:Int,totalSteps:Int)->Int
    {
        
        if step > totalSteps
        {
            return 0
        }
        
        if step == totalSteps
        {
            return 1
        }
        
        return climb(step:step + 1,totalSteps:totalSteps) + climb(step:step + 2,totalSteps: totalSteps)
        
        
    }
        
}


class Solution_DynamicProgramming{
	
    func climbStairs(_ n: Int) -> Int
    {
    	var numOfWays = [0,1,2]

    	if n < 3
    	{
    		return numOfWays[n] 
    	}

    	for i in 3...n
    	{
    		numOfWay.append(numOfWays[i-1] + numOfWays[i-2])
    	}

    	return numOfWays[n]
        
    }

}


class Solution_Fib{
	
	func climbStairs(_ n: Int) -> Int
    {
    	if n < 3 { return n }


    	var first = 1
    	var second = 2

    	for i in 3...n
    	{
    		let third = first + second
    		first = second
    		second = third
    	}

    	return second


    }


}





