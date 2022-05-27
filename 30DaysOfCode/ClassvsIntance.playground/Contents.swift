

import Foundation

class Person {
    var age: Int = 0

    init(initialAge: Int) {
        // Add some more code to run some checks on initialAge
          if initialAge < 0 {
            print("Age is not valid, setting age to 0.")
            age = 0
        } else {
            age = initialAge
        }
    }

    func amIOld() {
        // Do some computations in here and print out the correct statement to the console
            
        switch age {
            case 0..<13:
            print("You are young.")
        case 13..<18:
            print("You are a teenager.")
        default:
            print("You are old.")
        }
        
        
    }

    func yearPasses() {
    
         age += 1
    }
}

let t = Int(readLine()!)!
