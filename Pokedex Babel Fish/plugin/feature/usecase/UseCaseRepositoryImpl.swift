//
//  UseCaseRepositoryImpl.swift
//  ios-pokedex-clean
//
//  Created by caio sanchez christino on 13/10/22.
//

import Foundation

class UseCaseRepositoryImpl : UseCaseRepository {
    
    func doFetch(name: String?) -> UnitPokemon? {
        return UnitPokemon(name: "name")
    }
}

