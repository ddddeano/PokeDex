//
//  PokemonCell.swift
//  PokeDex
//
//  Created by Daniel Watson on 11/01/2021.
//

import SwiftUI
import Kingfisher

struct PokemonCell: View {
    
    let vM: PokemonViewModel
    let pokemon: Pokemon
    let backColor : Color
    
    init(pokemon: Pokemon, vM: PokemonViewModel) {
        self.pokemon = pokemon
        self.vM = vM
        self.backColor = Color(vM.backgroundColor(forType: pokemon.type))
    }
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                Text(pokemon.name.capitalized)
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(.top, 4)
                    .padding(.leading)
                HStack {
                    Text(pokemon.type)
                        .font(.subheadline).bold()
                        .foregroundColor(.white)
                        .padding(.horizontal, 16)
                        .padding(.vertical, 8)
                        .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.white.opacity(0.25))
                        )
                        .frame(width: 100, height: 24)
                    KFImage(URL(string: pokemon.imageUrl))
                        .resizable()
                        .scaledToFit()
                        .frame(width: 68.0, height: 68.0)
                }
            }
            
        }
        .background(backColor)
        .cornerRadius(12)
        .shadow(color: backColor, radius: 6, x: 0.0, y: 0.0)
    }
}

struct PokemonCell_Previews: PreviewProvider {
    static let vM = PokemonViewModel()
    static var previews: some View {
        PokemonCell(pokemon: mokPok[0], vM: vM)
    }
}
