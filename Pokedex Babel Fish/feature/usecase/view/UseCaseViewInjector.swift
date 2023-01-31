//
//  UseCaseViewInjector.swift
//  ios-pokedex-clean
//
//  Created by caio sanchez christino on 13/10/22.
//

import Foundation
import babelfish

class UseCaseViewInjector {
    static var injector: UseCaseViewInjector?
    
    let controllerFactory: ControllerFactory<UseCaseViewController, UseCaseController>

    init(controllerFactory: ControllerFactory<UseCaseViewController, UseCaseController>) {
        
        self.controllerFactory = controllerFactory
    }
}
