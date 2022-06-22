
func nearlySimilarRectangles(sides: [[Int]]) -> Int {
    var total = 0
    for i in 0..<sides.count {
        for j in i+1..<sides.count {
            
            if (sides[i][0] * sides[j][1] == sides[i][1] * sides[j][0]) {
                total = total + 1
            }
        }
    }
    return total
}
