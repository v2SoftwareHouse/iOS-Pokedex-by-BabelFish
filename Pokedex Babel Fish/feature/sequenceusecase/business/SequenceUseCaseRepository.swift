//
//  SequenceUseCaseRepository.swift
//  ios-pokedex-clean
//
//  Created by caio sanchez christino on 13/10/22.
//

import Foundation

protocol SequenceUseCaseRepository {
    func getBulbasaur() -> SequencePokemon?
    
    func getIvysaur() -> SequencePokemon?
    
    func getVenusaur() -> SequencePokemon?
}
