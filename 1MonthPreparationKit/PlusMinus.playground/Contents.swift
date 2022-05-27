import Foundation

func plusMinus(arr: [Int]) -> Void {
       
        let n = arr.count
        var plus = 0.0
        var minus = 0.0
        var zero = 0.0
        for i in arr {
            
            if i > 0 {
                plus = plus + 1.0
                
            } else if i < 0{
                minus = minus + 1.0
            } else {
                zero = zero + 1.0
            }
            
        }
        print(plus / Double(n))
        print(minus / Double(n))
        print(zero / Double(n))
        
    }
guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

guard let arrTemp = readLine()?.replacingOccurrences(of: "\\s+$", with: "", options: .regularExpression) else { fatalError("Bad input") }

let arr: [Int] = arrTemp.split(separator: " ").map {
    if let arrItem = Int($0) {
        return arrItem
    } else { fatalError("Bad input") }
}

guard arr.count == n else { fatalError("Bad input") }

plusMinus(arr: arr)
