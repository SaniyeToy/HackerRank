

import Foundation


func superDigit(n: String, k: Int) -> Int {
    // Write your code here

    
            var sum = 0
            sum =  (n.compactMap { Int(String($0)) }.reduce(0, +)) * k
            while sum > 10 {
                var num = String(sum)
                sum =  (num.compactMap { Int(String($0)) }.reduce(0, +))
            }
        print(sum)
        return sum
     
}

let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let firstMultipleInputTemp = readLine()?.replacingOccurrences(of: "\\s+$", with: "", options: .regularExpression) else { fatalError("Bad input") }
let firstMultipleInput = firstMultipleInputTemp.split(separator: " ").map{ String($0) }

let n = firstMultipleInput[0]

guard let k = Int(firstMultipleInput[1])
else { fatalError("Bad input") }

let result = superDigit(n: n, k: k)

fileHandle.write(String(result).data(using: .utf8)!)
fileHandle.write("\n".data(using: .utf8)!)
