//
//  Extension + AnimationViewController.swift
//  SpringAppForHomeWork
//
//  Created by Denis Bokov on 06.08.2022.
//

import UIKit
import SpringAnimation

extension AnimationViewController {
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
    
    private func string(from objectAnimation: CGFloat) -> String {
        String(format: "%.1f", objectAnimation)
    }
    
    func startAnimation(from objectAnimation: SpringView) {
        let valueAnimation = Value.getResult()
        
        objectAnimation.animation = getAnimationPreset().randomElement() ?? ""
        presetLabel.text = objectAnimation.animation
        startButton.setTitle(springAnimationView.animation, for: .normal)
        objectAnimation.curve = getAnimationCurve().randomElement() ?? ""
        curveLabel.text = objectAnimation.curve
        
        objectAnimation.force = valueAnimation.force // сила анимации
        forceLabel.text = string(from: objectAnimation.force)
        objectAnimation.duration = valueAnimation.duration // продолжительность анимации
        durationLabel.text = string(from: objectAnimation.duration)
        objectAnimation.delay = valueAnimation.delay // задержка анимации
        delayLabel.text = string(from: objectAnimation.delay)
        
        springAnimationView.animate()
    }
}
