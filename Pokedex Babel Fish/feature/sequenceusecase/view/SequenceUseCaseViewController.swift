//
//  SequenceUseCaseViewController.swift
//  ios-pokedex-clean
//
//  Created by caio sanchez christino on 13/10/22.
//

import Foundation
import UIKit
import babelfish

class SequenceUseCaseViewController: BaseViewController<SequenceUseCaseController> {

    override func viewDidLoad() {
        super.viewDidLoad()
        fetch()
    }
    
    override func setupViews(view: UIView?) {
        
    }
    
    override func channelName() -> String {
        "SequenceUseCaseViewController"
    }

    override func handleSuccess(value: Any?) {
        value
    }
    
    override func handleError(error: Any?) {
        error
    }
    
    override func setupController() -> SequenceUseCaseController {
        return SequenceUseCaseViewInjector.injector!
            .controllerFactory.create(context: self)!
    }
    
    private func fetch() {
        controller.doFetch(channelName: channelName())
    }
}
