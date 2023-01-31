//
//  UseCaseControllerFactoryImpl.swift
//  ios-pokedex-clean
//
//  Created by caio sanchez christino on 13/10/22.
//

import Foundation
import babelfish

class UseCaseControllerFactoryImpl : ControllerFactory<UseCaseViewController, UseCaseController> {
    
    override init() {
        
    }
    
    override func create(context: UseCaseViewController) -> UseCaseController? {
        let viewModel =  ViewModelProvider.of(model: UseCaseViewModel.self)
        return viewModel as? UseCaseController
    }
}
