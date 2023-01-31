//
//  ViewController.swift
//  ios-pokedex-clean
//
//  Created by caio sanchez christino on 03/12/21.
//

import UIKit
import babelfish

class ViewController: BaseViewController<LandingController> {

    override func viewDidLoad() {
        super.viewDidLoad()
        controller.doFetch(channelName: channelName())
    }
    
    override func setupViews(view: UIView?) {
        
    }
    
    override func channelName() -> String {
        "ViewController"
    }

    override func handleSuccess(value: Any?) {
        value
    }
    

    func goToUseCase(Sender: UIButton!)
    {
        self.present(UseCaseViewController(), animated: true, completion: nil)
    }
    
    func goToSequenceUseCase(Sender: UIButton!)
    {
        self.present(SequenceUseCaseViewController(), animated: true, completion: nil)
    }
    
    func goToChainUseCase(Sender: UIButton!)
    {
        self.present(ChainUseCaseViewController(), animated: true, completion: nil)
    }
    
    override func setupController() -> LandingController {
        let injector =  LandingViewInjector.injector!
                .controllerFactory.create(context: self)!

        return injector
    }
}
