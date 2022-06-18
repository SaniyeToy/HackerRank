import Foundation
  func isPrime(_ x: Int) -> Bool{
        for b in 2...Int(sqrt(Double(x))) {
            if x % b == 0{
                return false
            }
        }
        
      return true
    }
    
    for _ in 0..<Int(readLine()!)!{
    print(isPrime(Int(readLine()!)!) ? "Prime" : "Not prime")
}
