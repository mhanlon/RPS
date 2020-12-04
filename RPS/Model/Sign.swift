
//
//  Sign.swift
//  RPS
//
//  Created by Matthew Hanlon on 04/12/2020.
//  Copyright © 2020 Matthew Hanlon. All rights reserved.
//

import Foundation

func randomSign() -> Sign {
    let signNumber = Int.random(in: 0...2)
    if signNumber == 0 {
        return .rock
    } else if signNumber == 1 {
        return .paper
    } else {
        return .scissors
    }
}

enum Sign {
    case rock
    case paper
    case scissors
    
    var emoji: String {
        switch self {
        case .rock:
            return "👊"
        case .paper:
            return "🖐"
        case .scissors:
            return "✌️"
        }
    }
    
    func gameState(against opponentSign: Sign) -> GameState {
        if opponentSign == self {
            return .draw
        }
        
        switch self {
        case .rock:
            if ( opponentSign == .scissors ) {
                return .win
            }
        case .paper:
            if ( opponentSign == .rock ) {
                return .win
            }
        case .scissors:
            if ( opponentSign == .paper ) {
                return .win
            }
        }
        
        return .lose
    }
}
