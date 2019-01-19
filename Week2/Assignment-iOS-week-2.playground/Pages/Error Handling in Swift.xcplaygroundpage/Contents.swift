/*
-----------------------
Error Handling in Swift
-----------------------
*/

enum GuessNumberGameError: Error {
    case wrongNumber
}

class GuessNumBerGame {
    
    var targetNumber: Int = 10
    
    func guess(number: Int) throws {
        guard number == targetNumber else {
            throw GuessNumberGameError.wrongNumber
        }
    
    print("Guess the right number: \(targetNumber)")
    }
    
}

do {
    let guessNumberGame = GuessNumBerGame()
    try guessNumberGame.guess(number: 20)
}
catch let error {
    print(error)
}
