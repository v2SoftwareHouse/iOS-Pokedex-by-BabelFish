//
//  ChainUseCaseControllerFactoryImpl.swift
//  ios-pokedex-clean
//
//  Created by caio sanchez christino on 13/10/22.
//

import Foundation
import babelfish

class ChainUseCaseControllerFactoryImpl : ControllerFactory<ChainUseCaseViewController, ChainUseCaseController> {
    
    override init() {
        
    }
    
    override func create(context: ChainUseCaseViewController) -> ChainUseCaseController? {
        let viewModel =  ViewModelProvider.of(model: ChainUseCaseViewModel.self)
        return viewModel as? ChainUseCaseController
    }
}
