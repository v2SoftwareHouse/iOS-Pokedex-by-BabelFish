//
//  ChainUseCaseController.swift
//  ios-pokedex-clean
//
//  Created by caio sanchez christino on 13/10/22.
//

import Foundation
import babelfish

protocol ChainUseCaseController : Controller {
    func doFetch(channelName: String)
}
