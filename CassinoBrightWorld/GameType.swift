//
//  GameType.swift
//  CassinoBrightWorld
//
//  Created by Nicolae Chivriga on 18/01/2025.
//

enum GameType {
    case powerKeno
    case coinFinder
    case payTable
    
    var rules: String {
        switch self {
        case .powerKeno:
            return "Select 2 or more numbers from the grid, place a bet, and hit 'Play' to see if the drawn numbers match your selection; winnings are based on the number of hits."
        case .coinFinder:
            return "Choose a cell to reveal its contents; find the coin to win, but avoid the bomb, or the game is over!"
        case .payTable:
            return "Spin the reels and match symbols on paylines to win; bigger matches and special symbols grant higher rewards!"
        }
    }
    
    var silocika: String {
        switch self {
        case .powerKeno:
            return "https://plays.org/game/power-keno/"
        case .coinFinder:
            return "https://plays.org/game/coins-finder-game/"
        case .payTable:
            return "https://bakamyst7.itch.io/roguejack"
        }
    }
    
    var animations: String {
        switch self {
        case .powerKeno:
            return "ballisRunning"
        case .coinFinder:
            return "Se"
        case .payTable:
            return "Ser"
        }
    }
}
