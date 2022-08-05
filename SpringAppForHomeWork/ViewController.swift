//
//  ViewController.swift
//  SpringAppForHomeWork
//
//  Created by Denis Bokov on 04.08.2022.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {

    @IBOutlet var springAnimationView: SpringView!
    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    private func getAnimationPreset() -> [String] {
        var animationOne: [String] = []
        for animation in AnimationPreset.allCases {
            animationOne.append(animation.rawValue)
        }
        return animationOne
    }
    
    private func getAnimationCurve() -> [String] {
        var animationCurve: [String] = []
        for animation in AnimationCurve.allCases {
            animationCurve.append(animation.rawValue)
        }
        return animationCurve
    }
    
    @IBAction func startSpringAnimation(_ sender: SpringButton) {
        let valueAnimation = Value.getResult()
        
        springAnimationView.animation = getAnimationPreset().randomElement() ?? ""
        presetLabel.text = springAnimationView.animation
        startButton.setTitle(springAnimationView.animation, for: .normal)
        springAnimationView.curve = getAnimationCurve().randomElement() ?? ""
        curveLabel.text = springAnimationView.curve
        
        springAnimationView.force = valueAnimation.force // сила анимации
        forceLabel.text = String(format: "%.1f", springAnimationView.force)
        springAnimationView.duration = valueAnimation.duration // продолжительность анимации
        durationLabel.text = String(format: "%.1f", springAnimationView.duration)
        springAnimationView.delay = valueAnimation.delay // задержка анимации
        delayLabel.text = String(format: "%.1f", springAnimationView.delay)
        
        springAnimationView.animate()
    }
}

