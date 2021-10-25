//
//  Player.swift
//  Rpg FrenchGame Factory
//
//  Created by Timothy jounier on 30/09/2021.
//

import Foundation

class Player {
    let name: String
    var characters = [Character]()
    var isLoser: Bool {
        // voir si les charactères sont mort
        var isLoser = false
        for character in characters {
            if character.isDead {
                isLoser = true
            } else {
                return false
            }
        }
        return isLoser
    }
    
    init(name: String) {
        self.name = name
    }
    
    func descriptionCharacters() {
        
    }
}
