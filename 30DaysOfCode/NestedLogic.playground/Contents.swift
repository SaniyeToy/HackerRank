import Foundation

// Enter your code here
let returned = readLine()!.components(separatedBy: " ").map { Int($0)! }
let deadline = readLine()!.components(separatedBy: " ").map { Int($0)! }


var deadlineDay = deadline[0]
var deadlineMonth = deadline[1]
var deadlineYear = deadline[2]

var returnedDay = returned[0]
var returnedMonth = returned[1]
var returnedYear = returned[2]

var fine = 0;

if returnedYear > deadlineYear {
    fine = 10000
} else if returnedYear == deadlineYear {
    if returnedMonth > deadlineMonth {
        fine = (returnedMonth - deadlineMonth) * 500
    } else if deadlineMonth == returnedMonth && returnedDay > deadlineDay {
        fine = (returnedDay - deadlineDay) * 15
    }
}

print(fine)
