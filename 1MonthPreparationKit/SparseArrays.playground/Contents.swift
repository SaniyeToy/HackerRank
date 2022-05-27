import UIKit

func matchingStrings(strings: [String], queries: [String]) -> [Int] {
   var result: [Int] = []
       for i in queries{
           var total = 0
           for a in strings{
               if i == a {
                   total = total + 1
               }
               
           }
           result.append(total)
       }
        print(result)
    return result
}

let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let stringsCount = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

var strings = [String]()

for _ in 1...stringsCount {
    guard let stringsItem = readLine() else { fatalError("Bad input") }

    strings.append(stringsItem)
}

guard strings.count == stringsCount else { fatalError("Bad input") }

guard let queriesCount = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

var queries = [String]()

for _ in 1...queriesCount {
    guard let queriesItem = readLine() else { fatalError("Bad input") }

    queries.append(queriesItem)
}

guard queries.count == queriesCount else { fatalError("Bad input") }

let res = matchingStrings(strings: strings, queries: queries)

fileHandle.write(res.map{ String($0) }.joined(separator: "\n").data(using: .utf8)!)
fileHandle.write("\n".data(using: .utf8)!)
