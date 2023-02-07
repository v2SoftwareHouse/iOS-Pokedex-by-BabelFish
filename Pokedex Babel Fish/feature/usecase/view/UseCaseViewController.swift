//
//  UseCaseViewController.swift
//  ios-pokedex-clean
//
//  Created by caio sanchez christino on 13/10/22.
//

import Foundation
import UIKit
import babelfish

class UseCaseViewController: BaseViewController<UseCaseController> {

    override func viewDidLoad() {
        super.viewDidLoad()
        controller.doFetch(channelName: channelName(), name: "bulbasaur")
    }
    
    override func setupViews(view: UIView?) {
        
    }
    
    override func channelName() -> String {
        "UseCaseViewController"
    }


    override func handleSuccess(value: Any?) {
        value
    }
    
    override func handleError(error: Any?) {
        error
    }
    
    override func setupController() -> UseCaseController {
        let injector =  UseCaseViewInjector.injector!
                .controllerFactory.create(context: self)!

        return injector
    }
}
