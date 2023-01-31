//
//  ChainGETIvysaurUseCase.swift
//  ios-pokedex-clean
//
//  Created by caio sanchez christino on 13/10/22.
//

import Foundation
import babelfish

class ChainGETIvysaurUseCase : UseCase<ChainedPokemon, ChainedPokemon> {
     var repo: ChainUseCaseRepository
    
    init(repo: ChainUseCaseRepository){
        self.repo = repo
    }
    
    override func execute(param: ChainedPokemon?) -> Output<ChainedPokemon> {
        let pokemon = repo.getIvysaur()
        param?.pokemons.append(pokemon)
    
        return ValueOutput(value: param)
    }
}
