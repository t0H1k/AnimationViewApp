//
//  Model.swift
//  AnimationViewApp
//
//  Created by Anton Boev on 02.11.2022.
//

import Foundation

struct Animation {
    let animationsNames: String
    let curveNames: String
    let forceCount: Double
    let durationCount: Double
    let delayCount: Double
    
    static func randomAnimation() -> Animation {
        Animation(
            animationsNames: AnimationNames.shared.animationsNames.randomElement()?.description ?? "",
            curveNames: AnimationNames.shared.curvesNames.randomElement()?.description ?? "",
            forceCount: Double.random(in: 0.5...1.3),
            durationCount: Double.random(in: 1...1.5),
            delayCount: Double.random(in: 0...0.3)
        )
    }
    
}

