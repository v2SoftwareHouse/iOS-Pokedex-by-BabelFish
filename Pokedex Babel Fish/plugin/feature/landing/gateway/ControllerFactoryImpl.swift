//
//  ControllerFactoryImpl.swift
//  ios-pokedex-clean
//
//  Created by caio sanchez christino on 03/12/21.
//

import Foundation
import babelfish

class ControllerFactoryImpl : ControllerFactory<ViewController,LandingController>  {
    
    override init() {
        
    }
    
    override func create(context: ViewController) -> LandingController? {
        let viewmodel =  ViewModelProvider.of(model: LandingViewModel.self)
        return viewmodel as? LandingController
    }
}
