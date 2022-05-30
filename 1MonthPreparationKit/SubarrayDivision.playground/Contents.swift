import UIKit

func birthday(s: [Int], d: Int, m: Int){
    // Write your code here
    for i in 0..<s.count {
        var subArray: [Int] = []
        if m + i - 1 < s.count{
            subArray = Array(s[i...m+i-1])
            if subArray.reduce(0, +) == d {
                print(subArray)
            }
        }else{
            break
        }

    }
    
}
