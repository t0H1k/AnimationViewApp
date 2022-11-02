//
//  ViewController.swift
//  AnimationViewApp
//
//  Created by Anton Boev on 01.11.2022.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {

    @IBOutlet var animatedView: SpringView!
    @IBOutlet var animationButton: UIButton!
    
    @IBOutlet var animationNameLabel: UILabel! {
        didSet {
            animationNameLabel.text = "Animated: \(animation.animationsNames.description)"
        }
    }
    
    @IBOutlet var curveLabel: UILabel! {
        didSet {
            curveLabel.text = "Curve: \(animation.curveNames.description)"
        }
    }
    
    @IBOutlet var forceLabel: UILabel! {
        didSet {
            forceLabel.text = "Force: \(String(format: "%.2f", animation.forceCount))"
        }
    }
    
    @IBOutlet var durationLabel: UILabel! {
        didSet {
            durationLabel.text = "Duration: \(String(format: "%.2f", animation.durationCount))"
        }
    }
    
    @IBOutlet var delayLabel: UILabel! {
        didSet {
            delayLabel.text = "Delay: \(String(format: "%.2f", animation.delayCount))"
        }
    }
    
    private var animation = Animation.randomAnimation()
    
    @IBAction func runButtonDidTapped(_ sender: UIButton) {
        
        animationNameLabel.text = "Animated: \(animation.animationsNames.description)"
        curveLabel.text = "Curve: \(animation.curveNames.description)"
        forceLabel.text = "Force: \(String(format: "%.2f", animation.forceCount))"
        durationLabel.text = "Duration: \(String(format: "%.2f", animation.durationCount))"
        delayLabel.text = "Delay: \(String(format: "%.2f", animation.delayCount))"
        
        animatedView.animation = animation.animationsNames
        animatedView.curve = animation.curveNames
        animatedView.force = CGFloat(Float.random(in: 0.5...1.0))
        animatedView.duration = CGFloat(Float.random(in: 0.5...1.0))
        animatedView.delay = CGFloat(Float.random(in: 0.3...0.5))
        animatedView.animate()
        
        animation = Animation.randomAnimation()
        
        sender.setTitle("Run \(String(describing: animation.animationsNames.description ))", for: .normal)
    }
}
