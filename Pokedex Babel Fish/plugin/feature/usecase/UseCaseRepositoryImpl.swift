//
//  UseCaseRepositoryImpl.swift
//  ios-pokedex-clean
//
//  Created by caio sanchez christino on 13/10/22.
//

import Foundation
import Alamofire

class UseCaseRepositoryImpl : BaseRepository, UseCaseRepository {
    
    override init(baseUrl: String) {
        super.init(baseUrl: baseUrl)
    }
    
    func doFetch(name: String?) -> UnitPokemon? {
        let pokemon = "pokemon/" + (name ?? "")
        return getBodyOrThrow(call: AF.request(baseUrl + pokemon, method: .get))
    }
}
