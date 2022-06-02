import Foundation



guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

let str = Array(String(n, radix: 2))
var total = 0
var totalArr: [Int] = []
for i in 0...str.count - 1 {
    if i == str.count - 1 {
        
        if str[i] == "1" {
        total += 1
        
    } else {
           totalArr.append(total)
           total = 0
    }
    totalArr.append(total)
    }else {
        
        if str[i] == "1" {
        total += 1
        
    } else {
           totalArr.append(total)
           total = 0
    }
  }
}
 if total == str.count {
     print(total)
 }else {
     print((totalArr.max())!)
 }
