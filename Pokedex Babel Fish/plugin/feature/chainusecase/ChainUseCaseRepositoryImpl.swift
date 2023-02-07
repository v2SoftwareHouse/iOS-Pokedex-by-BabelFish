//
//  ChainUseCaseRepositoryImpl.swift
//  ios-pokedex-clean
//
//  Created by caio sanchez christino on 13/10/22.
//

import Foundation
import Alamofire

class ChainUseCaseRepositoryImpl : BaseRepository, ChainUseCaseRepository {
    
    override init(baseUrl: String) {
        super.init(baseUrl: baseUrl)
    }
    
    func getIvysaur()  -> ChainPokemon? {
        let pokemon = "pokemon/ivysaur"
        return getBodyOrThrow(call: AF.request(baseUrl + pokemon, method: .get))
    }
    
    func getBulbasaur()  -> ChainPokemon? {
        let pokemon = "pokemon/bulbasaur"
        return getBodyOrThrow(call: AF.request(baseUrl + pokemon, method: .get))
    }
}
