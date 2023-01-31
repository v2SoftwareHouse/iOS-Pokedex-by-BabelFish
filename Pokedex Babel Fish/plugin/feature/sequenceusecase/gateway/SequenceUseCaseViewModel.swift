//
//  SequenceUseCaseViewModel.swift
//  ios-pokedex-clean
//
//  Created by caio sanchez christino on 13/10/22.
//

import Foundation
import babelfish

class SequenceUseCaseViewModel: BaseViewModel, SequenceUseCaseController {
    
    lazy var getBulbasaur: SequenceGETBulbasaurUseCase = SequenceUseCaseGatewayInjector.injector!.getBulbasaur
    
    lazy var getIvysaur: SequenceGETIvysaurUseCase = SequenceUseCaseGatewayInjector.injector!.getIvysaur
    
    lazy var getVenusaur: SequenceGETVenusaurUseCase = SequenceUseCaseGatewayInjector.injector!.getVenusaur
    
    
    func doFetch(channelName: String) {
        let sequence = SequenceUseCase.SequenceBuilder()
            .add(useCase: getBulbasaur)
            .add(useCase: getIvysaur)
            .add(useCase: getVenusaur)
            .build()
        
        self.dispatchUseCase(param: nil, useCase: sequence){ output in
            self.postValue(channelName: channelName, value: output)
       }
    }
}
