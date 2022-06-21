func birthdayCakeCandles(candles: [Int]) -> Int {
    let max = candles.max()
    var total = 0
    for i in candles{
        if i == max {
            total += 1
        }
    }
    print(total)
return total
}

}
