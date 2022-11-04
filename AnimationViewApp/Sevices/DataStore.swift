//
//  DataStore.swift
//  AnimationViewApp
//
//  Created by Anton Boev on 01.11.2022.
//

import SpringAnimation

class DataStore {
    
    static let shared = DataStore()
    
    let animations = AnimationPreset.allCases
    
    let curves = AnimationCurve.allCases

    private init() {}
}
