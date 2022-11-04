//
//  Animation.swift
//  AnimationViewApp
//
//  Created by Anton Boev on 02.11.2022.
//

import Foundation

struct Animation {
    let name: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    var description: String {
        """
        preset: \(name)
        curve: \(curve)
        force: \(String(format: "%.02F", force))
        duration: \(String(format: "%.02F", duration))
        delay: \(String(format: "%.02F", delay))
        """
        
    }
    
    static func getRandomAnimation() -> Animation {
        Animation(
            name: DataStore.shared.animations.randomElement()?.rawValue ?? "shake",
            curve: DataStore.shared.curves.randomElement()?.rawValue ?? "easeIn",
            force: Double.random(in: 0.5...1.3),
            duration: Double.random(in: 1...1.5),
            delay: Double.random(in: 0.1...0.3)
        )
    }
    
}

