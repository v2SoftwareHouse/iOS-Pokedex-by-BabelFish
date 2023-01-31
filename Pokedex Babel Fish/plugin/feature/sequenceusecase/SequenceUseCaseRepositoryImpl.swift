//
//  SequenceUseCaseRepositoryImpl.swift
//  ios-pokedex-clean
//
//  Created by caio sanchez christino on 13/10/22.
//

import Foundation
import Alamofire

class SequenceUseCaseRepositoryImpl : BaseRepository , SequenceUseCaseRepository {
    
    override init(baseUrl: String) {
        super.init(baseUrl: baseUrl)
    }
    
    func getIvysaur()  -> SequencePokemon? {
        let pokemon = "pokemon/ivysaur"
        return getBodyOrThrow(call: AF.request(baseUrl + pokemon, method: .get))
    }
    
    func getVenusaur()  -> SequencePokemon? {
        let pokemon = "pokemon/venusaur"
        return getBodyOrThrow(call: AF.request(baseUrl + pokemon, method: .get))
    }
    
    func getBulbasaur()  -> SequencePokemon? {
        let pokemon = "pokemon/bulbasaur"
        return getBodyOrThrow(call: AF.request(baseUrl + pokemon, method: .get))
    }
}

