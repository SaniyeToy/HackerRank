import UIKit

func pangrams(s: String) -> String {
    // Write your code here
    let alph = "abcdefghijklmnopqrstuvwxyz"
        var total = 0
        for i in alph{
            if s.lowercased().contains(i){
                total = total + 1
            }
        }
        if total == 26 {
            return "pangram"
        }else{
            return "not pangram"
        }
}

let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let s = readLine() else { fatalError("Bad input") }

let result = pangrams(s: s)

fileHandle.write(result.data(using: .utf8)!)
fileHandle.write("\n".data(using: .utf8)!)
