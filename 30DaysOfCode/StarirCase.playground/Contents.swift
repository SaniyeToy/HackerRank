
import Foundation

/*
 * Complete the 'staircase' function below.
 *
 * The function accepts INTEGER n as parameter.
 */

func staircase(n: Int) -> Void {
  for a in 1...n {
        let counter = n - a
        if a != 1 {
            print()
        }
        for i in 1...n {
            if counter < i {
                print("#", terminator: "")
            }
            else {
                print(" ", terminator: "")
            }
        }
    }
}

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

staircase(n: n)
