//
//  Warrior.swift
//  Rpg FrenchGame Factory
//
//  Created by Timothy jounier on 29/09/2021.
//

import Foundation

// Objet Guerrier qui hérite de Character
class Warrior: Character {
    init(name: String) {
        // utiliser l'init de la classe mère (Caractères avec toutes les convenances)
        super.init(name: name, type: .Damage, lifePoints: 100, maxLife: 100, weapon: Axe())
    }
}
