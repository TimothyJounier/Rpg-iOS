//
//  Archer.swift
//  Rpg FrenchGame Factory
//
//  Created by Timothy jounier on 29/09/2021.
//

import Foundation

// Objet Archer qui hérite de Character
class Archer: Character {
    init(name: String) {
        super.init(name: name, type: .Damage, lifePoints: 60, maxLife: 60, weapon: CrossBow())
    }
}
