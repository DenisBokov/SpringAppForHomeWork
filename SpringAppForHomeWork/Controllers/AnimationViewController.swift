//
//  ViewController.swift
//  SpringAppForHomeWork
//
//  Created by Denis Bokov on 04.08.2022.
//

import UIKit
import SpringAnimation

class AnimationViewController: UIViewController {

    @IBOutlet var springAnimationView: SpringView!
    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var startButton: UIButton!
    
    @IBAction func startSpringAnimation() {
        startAnimation(from: springAnimationView)
    }
}


