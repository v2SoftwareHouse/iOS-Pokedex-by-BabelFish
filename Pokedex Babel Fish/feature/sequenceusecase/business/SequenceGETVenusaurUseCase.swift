//
//  GETVenusaurUseCase.swift
//  ios-pokedex-clean
//
//  Created by caio sanchez christino on 13/10/22.
//

import Foundation
import babelfish

class SequenceGETVenusaurUseCase : UseCase<Void, SequencePokemon> {
     var repo: SequenceUseCaseRepository
    
    init(repo: SequenceUseCaseRepository){
        self.repo = repo
    }
    
    override func execute(param: Void?) -> Output<SequencePokemon> {
        let pokemon = repo.getVenusaur()
        return ValueOutput(value: pokemon)
    }
}
