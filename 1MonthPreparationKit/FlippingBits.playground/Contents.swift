import UIKit

func flippingBits(n: Int) -> Int {
      
   let str = String(n, radix: 2)
    var padded = str
    var number = 0
       var string1 = ""
     for _ in 0..<(32 - str.count) {
       padded = "0" + padded
     }
   
       for i in padded{
           var a = i
       
           if i == "0" {
               a = "1"
           }else {
               a = "0"
           }
           string1.append(a)
       }
   
       if let number1 = Int(string1, radix: 2) {
           number = number1
       }
       print(number)
       return Int(number)
   }

let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let q = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

for qItr in 1...q {
   guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
   else { fatalError("Bad input") }

   let result = flippingBits(n: n)

   fileHandle.write(String(result).data(using: .utf8)!)
   fileHandle.write("\n".data(using: .utf8)!)
}
