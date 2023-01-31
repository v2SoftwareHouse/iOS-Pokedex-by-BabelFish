//
//  ChainUseCaseViewInjector.swift
//  ios-pokedex-clean
//
//  Created by caio sanchez christino on 13/10/22.
//

import Foundation
import babelfish

class ChainUseCaseViewInjector {
    static var injector: ChainUseCaseViewInjector?
    
    let controllerFactory: ControllerFactory<ChainUseCaseViewController, ChainUseCaseController>

    init(controllerFactory: ControllerFactory<ChainUseCaseViewController, ChainUseCaseController>) {
        self.controllerFactory = controllerFactory
    }
}
