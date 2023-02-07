//
//  GETBulbasaurUseCase.swift
//  ios-pokedex-clean
//
//  Created by caio sanchez christino on 13/10/22.
//

import Foundation
import babelfish

class GETUseCase : UseCase<String, UnitPokemon> {
    var repo: UseCaseRepository

    init(repo: UseCaseRepository){
        self.repo = repo
    }
    
    override func execute(param: String?) -> Output<UnitPokemon> {
        let pokemon = repo.doFetch(name: param)
        return ValueOutput(value: pokemon)
    }
}
