//
//  ChainUseCaseViewModel.swift
//  ios-pokedex-clean
//
//  Created by caio sanchez christino on 13/10/22.
//

import Foundation
import babelfish

class ChainUseCaseViewModel: BaseViewModel, ChainUseCaseController {

    lazy var getIvysaur: ChainGETIvysaurUseCase = ChainUseCaseGatewayInjector.injector!.getIvysaur
    lazy var getBulbasaur: ChainGETBulbasaurUseCase = ChainUseCaseGatewayInjector.injector!.getBulbasaur

    func doFetch(channelName: String) {
        let chained = ChainedUseCase(first: getBulbasaur, second: getIvysaur)

        dispatchUseCase(param: nil, useCase: chained){ output in
            self.postValue(channelName: channelName, value: output)
       }
    }

}
