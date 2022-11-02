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
    
    @IBOutlet var firstLabel: UILabel!
    @IBOutlet var secondLabel: UILabel!
    @IBOutlet var thirdLabel: UILabel!
    @IBOutlet var fourthLabel: UILabel!
    @IBOutlet var fiveLabel: UILabel!

    @IBAction func runButtonDidTapped(_ sender: UIButton) {
        let animationView = Animation.getRandomAnimation().randomElement()
        let curveView = Curves.getRandomCurves().randomElement()

        animatedView.animation = animationView?.animationsNames ?? ""
        animatedView.curve = curveView?.curvesNames ?? ""
        animatedView.force = CGFloat(Float.random(in: 0.5...1.0))
        animatedView.duration = CGFloat(Float.random(in: 0.5...1.0))
        animatedView.delay = CGFloat(Float.random(in: 0.9...1.0))
        animatedView.animate()
        
        sender.setTitle("Run \(String(describing: animationView?.animationsNames ?? ""))", for: .normal)
        
        firstLabel.text = "Animated: \(animationView?.animationsNames.description ?? "")"
        secondLabel.text = "Curve: \(curveView?.curvesNames.description ?? "")"
        thirdLabel.text = "Force: \(String(format: "%.2f", animatedView.force))"
        fourthLabel.text = "Duration: \(String(format: "%.2f", animatedView.duration))"
        fiveLabel.text = "Delay: \(String(format: "%.2f", animatedView.delay))"
    }    
}

