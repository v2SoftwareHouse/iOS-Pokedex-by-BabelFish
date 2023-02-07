//
//  UseCaseController.swift
//  ios-pokedex-clean
//
//  Created by caio sanchez christino on 13/10/22.
//

import Foundation
import babelfish

protocol UseCaseController : Controller {
    func doFetch(channelName: String, name: String?)
}
