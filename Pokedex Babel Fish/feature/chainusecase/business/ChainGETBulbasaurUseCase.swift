//
//  ChainGETBulbasaurUseCase.swift
//  ios-pokedex-clean
//
//  Created by caio sanchez christino on 13/10/22.
//

import Foundation
import babelfish

class ChainGETBulbasaurUseCase : UseCase<Void, ChainedPokemon> {
     var repo: ChainUseCaseRepository
    
    init(repo: ChainUseCaseRepository){
        self.repo = repo
    }
    
    override func execute(param: Void?) -> Output<ChainedPokemon> {
        let chainedPokemon = ChainedPokemon()
        let pokemon = repo.getBulbasaur()
        chainedPokemon.pokemons.append(pokemon)
        
        return ValueOutput(value: chainedPokemon)
    }
}
