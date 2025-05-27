//
//  ViewController.swift
//  TrafficLightApp
//
//  Created by Alexandr Artemov (Mac Mini) on 26.05.2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    
    @IBOutlet var lightControlButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightView.layer.cornerRadius = redLightView.bounds.height / 2
        yellowLightView.layer.cornerRadius = yellowLightView.bounds.height / 2
        greenLightView.layer.cornerRadius = greenLightView.bounds.height / 2
        
        lightControlButton.layer.cornerRadius = 16
        
        redLightView.alpha = 0.3
        yellowLightView.alpha = 0.3
        greenLightView.alpha = 0.3
    }

    @IBAction func didTapSwitchLight(_ sender: UIButton) {
        
        if redLightView.alpha == 1 {
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1
        } else if yellowLightView.alpha == 1 {
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1
        } else if greenLightView.alpha == 1 {
            greenLightView.alpha = 0.3
            redLightView.alpha = 1
        } else {
            sender.setTitle("NEXT", for: .normal)
            redLightView.alpha = 1
        }
    }
    
}

