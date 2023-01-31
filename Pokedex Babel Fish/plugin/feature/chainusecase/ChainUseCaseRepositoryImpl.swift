//
//  ChainUseCaseRepositoryImpl.swift
//  ios-pokedex-clean
//
//  Created by caio sanchez christino on 13/10/22.
//

import Foundation

class ChainUseCaseRepositoryImpl : ChainUseCaseRepository {
    func getIvysaur() -> ChainPokemon? {
        return ChainPokemon(name: "Ivysaur")
    }
    
    func getBulbasaur() -> ChainPokemon? {
        return ChainPokemon(name: "Bulbasaur")
    }
}
