//
//  Character.swift
//  Rpg FrenchGame Factory
//
//  Created by Timothy jounier on 29/09/2021.
//

import Foundation

// Regroupe et énumére les types de Characters
enum Charactertype: String {
    case Damage, Healer
}

// Création de l'objet Character
class Character {
    let name: String
    let type: Charactertype
    var weapon: Weapon
    let maxLife: Int
    var lifePoints: Int
    var isDead: Bool {
        return lifePoints <= 0
    }
    
    init(name:String, type: Charactertype, lifePoints: Int, maxLife: Int, weapon: Weapon){
        self.name = name
        self.type = type
        self.lifePoints = lifePoints
        self.maxLife = maxLife
        self.weapon = weapon
    }
    
    /// Description of characters lifes
    func description(index: Int) -> String {
        if isDead {
            return(" \(name) the \(type) \(lifePoints)/\(maxLife) had die during the fight. ")
        } else {
            return("\(index). \(name) the \(type) \(lifePoints)/\(maxLife) life points /  \(weapon.weaponName) : \(String(describing: weapon.damage)) dammage")
        }
    }
    
    // Déduction des points de vie de la cible
    func attack(_ target: Character){
        let newLifePoint = target.lifePoints - self.weapon.damage!
        
        if lifePoints > 0 {
            if target.isDead {
                print("Vous ne pouvez pas attaquer les personnes mortes")
            } else {
                target.lifePoints = newLifePoint
                if target.lifePoints < 0 {
                    target.lifePoints = 0
                }
            }
        } else {
            print("Ton personnage est déjà mort")
        }
    }
}
