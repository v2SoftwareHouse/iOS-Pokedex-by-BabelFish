//
//  LandingRepository.swift
//  ios-pokedex-clean
//
//  Created by caio sanchez christino on 03/12/21.
//

import Foundation

protocol LandingRepository {
    func doFetch() -> Landing?
}
