import UIKit

func timeConversion(s: String) -> String {

 let dateAsString = s
    let df = DateFormatter()
    df.dateFormat = "hh:mm:ssa"

    let date = df.date(from: dateAsString)
    df.dateFormat = "HH:mm:ss"

    let time24 = df.string(from: date!)
    print(time24)
    return time24


}

let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let s = readLine() else { fatalError("Bad input") }

let result = timeConversion(s: s)

fileHandle.write(result.data(using: .utf8)!)
fileHandle.write("\n".data(using: .utf8)!)
