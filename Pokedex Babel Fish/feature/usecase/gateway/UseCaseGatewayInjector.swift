//
//  UseCaseGatewayInjector.swift
//  ios-pokedex-clean
//
//  Created by caio sanchez christino on 13/10/22.
//

import Foundation

class UseCaseGatewayInjector {
    static var injector: UseCaseGatewayInjector?
    
    let getBulbasaur: GETBulbasaurUseCase

    init(getBulbasaur: GETBulbasaurUseCase) {
        self.getBulbasaur = getBulbasaur
    }
}
