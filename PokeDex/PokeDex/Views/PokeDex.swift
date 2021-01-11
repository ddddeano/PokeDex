//
//  PokeDex.swift
//  PokeDex
//
//  Created by Daniel Watson on 11/01/2021.
//

import SwiftUI

struct PokeDex: View {
    private let gridItems = [GridItem(.flexible()), GridItem(.flexible())]
    @StateObject var vM = PokemonViewModel()
    
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: gridItems, spacing: 16) {
                    ForEach(vM.pokemon) { pokemon in
                        PokemonCell(pokemon: pokemon, vM: vM)
                    }
                }
            }
            .navigationTitle("Pokedex")
        }
    }
}

struct PokeDex_Previews: PreviewProvider {
    static var previews: some View {
        PokeDex()
    }
}
