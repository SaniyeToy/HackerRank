import UIKit
func getSmallestArray(arr: [Int], l: Int, r: Int) -> [Int] {
  
    let defaultArr : [Int]  = [-1]
    var newArray : [Int] = []
    
    for i in 0...arr.count - 1 {
        
        let new =  i + arr[i]
        if new >= l && new <= r {
            
            newArray.append( new)
        }else{
            newArray = []
            print(defaultArr)
            return defaultArr
        }
    }
    
    if newArray == newArray.sorted() && !(newArray.isEmpty){
        print(newArray)
        return newArray
    }else{
        print(defaultArr)
        return defaultArr
    }
}
