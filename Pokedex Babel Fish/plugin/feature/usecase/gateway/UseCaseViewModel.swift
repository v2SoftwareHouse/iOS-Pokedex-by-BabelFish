//
//  UseCaseViewModel.swift
//  ios-pokedex-clean
//
//  Created by caio sanchez christino on 13/10/22.
//

import Foundation
import babelfish

class UseCaseViewModel: BaseViewModel, UseCaseController {
    
    lazy var get: GETUseCase = UseCaseGatewayInjector.injector!.get
    
    func doFetch(channelName: String, name: String?) {
        dispatchUseCase(param: name, useCase: get){ output in
            self.postValue(channelName: channelName, value: output)
       }
    }
}

