//
//  SequenceUseCaseViewInjector.swift
//  ios-pokedex-clean
//
//  Created by caio sanchez christino on 13/10/22.
//

import Foundation
import babelfish

class SequenceUseCaseViewInjector {
    static var injector: SequenceUseCaseViewInjector?
    
    let controllerFactory: ControllerFactory<SequenceUseCaseViewController, SequenceUseCaseController>

    init(controllerFactory: ControllerFactory<SequenceUseCaseViewController, SequenceUseCaseController>) {
        self.controllerFactory = controllerFactory
    }
}
