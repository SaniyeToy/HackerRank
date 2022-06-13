func getUniqueCharacter(s: String) -> Int {
    var unique: [String] = []
    var result = 0
    for char in s.lowercased() {
        var total = 0
        for i in s {
            if char == i {
                total += 1
            }
        }
        
        if total < 2 {
            unique.append(String(char))
        }
    }
    
    if unique.isEmpty {
        return -1
    }else{
        if let index = s.firstIndex(of: Character(unique[0])){
            let i: Int = s.distance(from: s.startIndex, to: index)
            
            result = i + 1
        }
    }
    return result
}
