func printEvenAndOdd(string: String) {
    // This prints inputString to stderr for debugging:
    fputs("string: " + string + "\n", stderr)
    var str1 = ""
    var str2 = ""
    for i in 0..<string.count{
        if i % 2 == 0 {
            let index = string.index(string.startIndex, offsetBy: i)
             str1 = str1 + String(string[index])
    
        }else{
             let index = string.index(string.startIndex, offsetBy: i)
             str2 = str2 + String(string[index])
        }
        
    }
    print(str1 + " " + str2)
    


/////////////////////////////////////////Second Method

    let numStrings = Int(readLine()!)!

    func printEvenAndOdd(string: String) {
        // This prints inputString to stderr for debugging:
        fputs("string: " + string + "\n", stderr)
        for (i, chr) in string.enumerated() {
            guard i % 2 == 0 else { continue }
            print(chr, terminator: "")
        }

        // Print a space
        print(" ", terminator: "")

        // Print the odd-indexed characters
        for (i, chr) in string.enumerated() {
            guard i % 2 != 0 else { continue }
            print(chr, terminator: "")
        }

        // Print a newline
        print()
    }

    for _ in 1...numStrings {
        let inputString = readLine()!
        printEvenAndOdd(string: inputString)
    }
