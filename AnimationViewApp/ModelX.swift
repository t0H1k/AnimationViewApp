//
//  ModelX.swift
//  AnimationViewApp
//
//  Created by Anton Boev on 01.11.2022.
//

import Foundation

struct RandomAnimation {
    let first: String
    let second: String
    let third: String
    let fourth: String
    let five: String
    
    let animation = AnimationNames.shared
    
    static func getFirstAnimation() -> String {
        first = animation.animationsNames.randomElement() ?? ""
    }
    
}
