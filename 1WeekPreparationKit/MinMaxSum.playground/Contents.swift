import UIKit
func miniMaxSum(arr: [Int]) -> Void {
    
var sum = arr.reduce(0, +)
let min = arr.min()
let max = arr.max()
let totalMin = sum - max!
let totalMax = sum - min!
print(totalMin , totalMax)

}

guard let arrTemp = readLine()?.replacingOccurrences(of: "\\s+$", with: "", options: .regularExpression) else { fatalError("Bad input") }

let arr: [Int] = arrTemp.split(separator: " ").map {
    if let arrItem = Int($0) {
        return arrItem
    } else { fatalError("Bad input") }
}

guard arr.count == 5 else { fatalError("Bad input") }

miniMaxSum(arr: arr)

