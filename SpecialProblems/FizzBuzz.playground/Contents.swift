func fizzBuzz(n: Int) -> Void {
    
    for i in 1...n{
        switch i {
        case let x where x % 5 == 0 && x % 3 == 0 :
            print("FizzBuzz")
        case let x where x % 5 == 0 && x % 3 != 0 :
            
            print("Buzz")
        case let x where x % 5 != 0 && x % 3 == 0 :
            print("Fizz")
        default :
            print(i)
            
        }
    }
}
