//
//  Weapon.swift
//  Rpg FrenchGame Factory
//
//  Created by Timothy jounier on 30/09/2021.
//

import Foundation

class Weapon {
    let damage: Int?
    let weaponName: String
    let healing: Int?
    
    init(damage: Int? = nil, weaponName: String, healing: Int? = nil){
        self.damage = damage
        self.weaponName = weaponName
        self.healing = healing
    }
}


