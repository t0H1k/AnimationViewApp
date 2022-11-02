//
//  Model.swift
//  AnimationViewApp
//
//  Created by Anton Boev on 02.11.2022.
//

import Foundation

struct Animation {
    var animationsNames: String
    
    static func getRandomAnimation() -> [Animation] {
        var animations: [Animation] = []
        
        let animationName = AnimationNames.shared.animationsNames
        let numberOfMixes = animationName.count
        
        for index in 0..<numberOfMixes {
            let animation = Animation(animationsNames: animationName[index])
            animations.append(animation)
        }
        return animations
    }
}

struct Curves {
    var curvesNames: String
    
    static func getRandomCurves() -> [Curves] {
        var curves: [Curves] = []
        
        let curveNames = AnimationNames.shared.curvesNames
        let numberOfMixes = curveNames.count
        
        for index in 0..<numberOfMixes {
            let curve = Curves(curvesNames: curveNames[index])
            curves.append(curve)
        }
        return curves
    }
}

