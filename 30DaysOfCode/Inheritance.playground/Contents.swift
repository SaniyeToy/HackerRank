import Foundation

// Class Person
class Person {
    private let firstName: String
    private let lastName: String
    private let id: Int

    // Initializer
    init(firstName: String, lastName: String, id: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.id = id
    }

    // Print person data
    func printPerson() {
        print("Name: \(lastName), \(firstName)")
        print("ID: \(id)")
    }
} // End of class Person
// Class Student

class Student: Person {

    var testScores: [Int]

    init(firstName: String, lastName: String, id: Int, scores: [Int]){
        self.testScores = scores
        super.init(firstName: firstName, lastName: lastName, id: id)
    }

    func calculate() -> Character {
        var sum = 0
        testScores.forEach { sum += $0 }
        switch sum / testScores.count {
        case 90...100:
            return "O"
        case 80..<90:
            return "E"
        case 70..<80:
            return "A"
        case 55..<70:
            return "P"
        case 40..<55:
            return "D"
        default:
            return "T"
        }
    }
} // End of class Student

let nameAndID = readLine()!.components(separatedBy: " ")
let _ = readLine()
let scores = readLine()!.components(separatedBy: " ").map{ Int($0)! }

let s = Student(firstName: nameAndID[0], lastName: nameAndID[1], id: Int(nameAndID[2])!, scores: scores)

s.printPerson()

print("Grade: \(s.calculate())")
