//
//  ChainUseCaseGatewayInjector.swift
//  ios-pokedex-clean
//
//  Created by caio sanchez christino on 13/10/22.
//

import Foundation

class ChainUseCaseGatewayInjector {
    static var injector: ChainUseCaseGatewayInjector?
    
    let getIvysaur: ChainGETIvysaurUseCase
    let getBulbasaur: ChainGETBulbasaurUseCase

    init(getIvysaur: ChainGETIvysaurUseCase, getBulbasaur: ChainGETBulbasaurUseCase) {
        self.getIvysaur = getIvysaur
        self.getBulbasaur = getBulbasaur
    }
}
