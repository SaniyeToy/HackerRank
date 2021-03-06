import UIKit

func countingSort(arr: [Int]) -> [Int] {
     var occurances: [Int:Int] = [:]

    for element in arr {
        if occurances[element] != nil {
            occurances[element]! += 1
        } else {
            occurances[element] = 1
        }
    }

    var result: [Int] = []

    for number in 0...99 {
        if let count = occurances[number] {
            result.append(count)
        } else {
            result.append(0)
        }
    }

    return result
}

let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

guard let arrTemp = readLine()?.replacingOccurrences(of: "\\s+$", with: "", options: .regularExpression) else { fatalError("Bad input") }

let arr: [Int] = arrTemp.split(separator: " ").map {
    if let arrItem = Int($0) {
        return arrItem
    } else { fatalError("Bad input") }
}

guard arr.count == n else { fatalError("Bad input") }

let result = countingSort(arr: arr)

fileHandle.write(result.map{ String($0) }.joined(separator: " ").data(using: .utf8)!)
fileHandle.write("\n".data(using: .utf8)!)
