//
//  SequenceUseCaseGatewayInjector.swift
//  ios-pokedex-clean
//
//  Created by caio sanchez christino on 13/10/22.
//

import Foundation

class SequenceUseCaseGatewayInjector {
    static var injector: SequenceUseCaseGatewayInjector?
    
    let getBulbasaur: SequenceGETBulbasaurUseCase
    let getIvysaur: SequenceGETIvysaurUseCase
    let getVenusaur: SequenceGETVenusaurUseCase

    init(getBulbasaur: SequenceGETBulbasaurUseCase, getIvysaur: SequenceGETIvysaurUseCase, getVenusaur: SequenceGETVenusaurUseCase) {
        self.getBulbasaur = getBulbasaur
        self.getIvysaur = getIvysaur
        self.getVenusaur = getVenusaur
    }
}
