//
//  Healer.swift
//  Rpg FrenchGame Factory
//
//  Created by Timothy jounier on 29/09/2021.
//

import Foundation

// Objet Heal qui hérite de Character
class Healer: Character {
    init(name: String){
        super.init(name: name, type: .Healer, lifePoints: 50, maxLife: 50, weapon: Stick())
    }
}
