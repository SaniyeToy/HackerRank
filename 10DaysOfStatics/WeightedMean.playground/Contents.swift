
func weightedMean(X: [Int], W: [Int]) -> Void {
    // Write your code here
var multiply: [Int] = []
var total  = 0
var weightedMean = 0.0
for i in 0..<X.count {
   multiply.append(X[i] * W[i] )
   total = total + W[i]
}
let sum = multiply.reduce(0, +)
weightedMean = Double( sum) / Double(total)
let y = Double(round(10 * weightedMean) / 10)
print(y)
}
