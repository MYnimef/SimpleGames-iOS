//
//  RPS.swift
//  SimpleGames
//
//  Created by Ivan Markov on 03.04.2022.
//

enum RPS: Int {
    
    case Rock = 0
    case Papper
    case Scissors
    
    static func random() -> RPS {
        return RPS(rawValue: Int.random(in: 0..<3)) ?? RPS.Scissors
    }
    
    static func chooseWinner(human: RPS, computer: RPS) -> GameResult {
        if human == computer {
            return .NoOne
        }
        
        switch human {
        case .Rock:
            if (computer == .Papper) {
                return .Computer
            } else {
                return .Human
            }
        case .Papper:
            if (computer == .Scissors) {
                return .Computer
            } else {
                return .Human
            }
        case .Scissors:
            if (computer == .Rock) {
                return .Computer
            } else {
                return .Human
            }
        }
    }
}
