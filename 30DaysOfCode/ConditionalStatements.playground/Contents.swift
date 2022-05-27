import UIKit

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }


 if n % 2 == 1 {
        print("Weird")
    } else {
        switch n {
        case 6...20:
            print("Weird")
        default:
            print("Not Weird")
        }
    }
