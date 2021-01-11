//
//  Pokemon.swift
//  PokeDex
//
//  Created by Daniel Watson on 11/01/2021.
//

import Foundation

struct Pokemon: Decodable, Identifiable {
    let id: Int
    let name: String
    let imageUrl: String
    let type: String
}


let mokPok: [Pokemon] = [
    .init(id: 0, name: "Dave", imageUrl: "Bulbasaur" ,type: "Poison"),
    .init(id: 1, name: "Paul", imageUrl: "Bulbasaur" ,type: "Fire"),
    .init(id: 2, name: "Barry", imageUrl: "Bulbasaur" ,type: "Lemon"),
    .init(id: 3, name: "Kevin", imageUrl: "Bulbasaur" ,type: "Water")
    
]
