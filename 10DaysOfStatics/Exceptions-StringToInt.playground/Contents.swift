func stringToInt(inputString: String) throws -> Int {

    guard let int = Int(inputString) else {
        throw StringToIntTypecastingError.BadString
    }
    return int
}

