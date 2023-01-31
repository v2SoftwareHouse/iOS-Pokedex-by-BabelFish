//
//  SequenceUseCaseControllerFactoryImpl.swift
//  ios-pokedex-clean
//
//  Created by caio sanchez christino on 13/10/22.
//

import Foundation
import babelfish

class SequenceUseCaseControllerFactoryImpl : ControllerFactory<SequenceUseCaseViewController, SequenceUseCaseController> {
    
    override func create(context: SequenceUseCaseViewController) -> SequenceUseCaseController? {
        let viewModel =  ViewModelProvider.of(model: SequenceUseCaseViewModel.self)
        return viewModel as? SequenceUseCaseController
    }
}
