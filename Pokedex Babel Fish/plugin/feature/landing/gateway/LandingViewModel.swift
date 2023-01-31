//
//  LandingViewModel.swift
//  ios-pokedex-clean
//
//  Created by caio sanchez christino on 03/12/21.
//

import Foundation
import babelfish


class LandingViewModel: BaseViewModel, LandingController {
    
    lazy var fetcher: LandingUseCase = LandingGatewayInjector.injector!.doFetch
    
    func doFetch(channelName: String) {
        
    }
}
