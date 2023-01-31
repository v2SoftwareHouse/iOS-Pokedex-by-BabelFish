//
//  ChainUseCaseViewController.swift
//  ios-pokedex-clean
//
//  Created by caio sanchez christino on 13/10/22.
//

import Foundation
import UIKit
import babelfish

class ChainUseCaseViewController: BaseViewController<ChainUseCaseController> {

    override func viewDidLoad() {
        super.viewDidLoad()
        controller.doFetch(channelName: channelName())
    }
    
    override func setupViews(view: UIView?) {
        
    }
    
    override func channelName() -> String {
        "ChainUseCaseViewController"
    }

    override func handleSuccess(value: Any?) {
        value
    }
    
    override func setupController() -> ChainUseCaseController {
        let injector =  ChainUseCaseViewInjector.injector!
                .controllerFactory.create(context: self)!

        return injector
    }
}
