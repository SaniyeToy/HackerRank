func stringToInt(inputString: String) throws -> Int {
      return try Int(inputString) ?? { throw StringToIntTypecastingError.BadString }()
}


