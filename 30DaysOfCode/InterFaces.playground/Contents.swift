protocol AdvancedArithmetic {
    func divisorSum(_ n: Int) -> Int
}

class Calculator: AdvancedArithmetic {
    func divisorSum(_ n: Int) -> Int {
        var sum = 0
        for i in 1 ... n {
            if n % i == 0 {
                sum += i
            }
        }
        return sum
    }
}

let myCalculator = Calculator()
let sum = myCalculator.divisorSum(n)
print("I implemented: " + String(AdvancedArithmetic))
print(sum)
