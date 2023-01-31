//
//  AppDelegate.swift
//  Pokedex Babel Fish
//
//  Created by caio sanchez christino on 17/01/23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    let url = "https://pokeapi.co/api/v2/"
    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        injectLanding()
        injectUnitUseCase()
        injectChainUseCase()
        injectSequenceUseCase()
        return true
    }
    private func injectLanding(){
        LandingGatewayInjector.injector = {
            let instance = LandingGatewayInjector(doFetch: LandingUseCase(repo: LandingRepositoryImpl()))
            return instance
        }()

        LandingViewInjector.injector = {
            let factory = ControllerFactoryImpl()
            let instance = LandingViewInjector(controllerFactory: factory)
            return instance
        }()
    }
    
    private func injectUnitUseCase(){
        UseCaseGatewayInjector.injector = {
            let instance = UseCaseGatewayInjector(getBulbasaur: GETBulbasaurUseCase(repo: UseCaseRepositoryImpl()))
            return instance
        }()

        UseCaseViewInjector.injector = {
            let factory = UseCaseControllerFactoryImpl()
            let instance = UseCaseViewInjector(controllerFactory: factory)
            return instance
        }()
    }
    
    private func injectSequenceUseCase(){
        SequenceUseCaseGatewayInjector.injector = {
            let instance = SequenceUseCaseGatewayInjector(
                getBulbasaur:SequenceGETBulbasaurUseCase(repo:SequenceUseCaseRepositoryImpl(baseUrl: url)),
                getIvysaur: SequenceGETIvysaurUseCase(repo:SequenceUseCaseRepositoryImpl(baseUrl: url)),
                getVenusaur: SequenceGETVenusaurUseCase(repo:SequenceUseCaseRepositoryImpl(baseUrl: url)))
            
            return instance
        }()

        SequenceUseCaseViewInjector.injector = {
            let factory = SequenceUseCaseControllerFactoryImpl()
            let instance = SequenceUseCaseViewInjector(controllerFactory: factory)
            return instance
        }()
    }
    
    private func injectChainUseCase(){
        ChainUseCaseGatewayInjector.injector = {
            let instance = ChainUseCaseGatewayInjector(
                getIvysaur: ChainGETIvysaurUseCase(repo:ChainUseCaseRepositoryImpl()),
                getBulbasaur:ChainGETBulbasaurUseCase(repo:ChainUseCaseRepositoryImpl()))
            return instance
        }()

        ChainUseCaseViewInjector.injector = {
            let factory = ChainUseCaseControllerFactoryImpl()
            let instance = ChainUseCaseViewInjector(controllerFactory: factory)
            return instance
        }()
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func application(_ app: UIApplication, open inputURL: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        // Ensure the URL is a file URL
        guard inputURL.isFileURL else { return false }
                
        // Reveal / import the document at the URL
        guard let documentBrowserViewController = window?.rootViewController as? DocumentBrowserViewController else { return false }

        documentBrowserViewController.revealDocument(at: inputURL, importIfNeeded: true) { (revealedDocumentURL, error) in
            if let error = error {
                // Handle the error appropriately
                print("Failed to reveal the document at URL \(inputURL) with error: '\(error)'")
                return
            }
            
            // Present the Document View Controller for the revealed URL
            documentBrowserViewController.presentDocument(at: revealedDocumentURL!)
        }

        return true
    }


}

