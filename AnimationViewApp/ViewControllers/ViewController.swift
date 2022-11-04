//
//  ViewController.swift
//  AnimationViewApp
//
//  Created by Anton Boev on 01.11.2022.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet var animatedView: SpringView!
    @IBOutlet var animationLabel: UILabel! {
        didSet {
            animationLabel.text = animation.description
        }
    }
    
    // MARK: - Private properties
    private var animation = Animation.getRandomAnimation()
    
    // MARK: - IB Actions
    @IBAction func runButtonDidTapped(_ sender: UIButton) {
        animationLabel.text = animation.description
        
        animatedView.animation = animation.name
        animatedView.curve = animation.curve
        animatedView.force = animation.force
        animatedView.duration = animation.duration
        animatedView.delay = animation.delay
        animatedView.animate()
        
        animation = Animation.getRandomAnimation()
        sender.setTitle("Run \(String(describing: animation.name ))", for: .normal)
    }
}
