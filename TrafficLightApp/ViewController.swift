import UIKit

final class ViewController: UIViewController {

    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    
    @IBOutlet var lightControlButton: UIButton!
    
    private var currentLight = CurrentLight.red
    private let lightIsOn = 1.0
    private let lightIsOff = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightView.alpha = lightIsOff
        yellowLightView.alpha = lightIsOff
        greenLightView.alpha = lightIsOff
        
        redLightView.layer.cornerRadius = redLightView.bounds.height / 2
        yellowLightView.layer.cornerRadius = yellowLightView.bounds.height / 2
        greenLightView.layer.cornerRadius = greenLightView.bounds.height / 2
        
        lightControlButton.layer.cornerRadius = 16
    }

    @IBAction func didTapSwitchLight() {
        
        if lightControlButton.currentTitle == "START" {
            lightControlButton.setTitle("NEXT", for: .normal)
        }
        
        switch currentLight {
        case .red:
            greenLightView.alpha = lightIsOff
            redLightView.alpha = lightIsOn
            currentLight = .yellow
        case .yellow:
            redLightView.alpha = lightIsOff
            yellowLightView.alpha = lightIsOn
            currentLight = .green
        case .green:
            greenLightView.alpha = lightIsOn
            yellowLightView.alpha = lightIsOff
            currentLight = .red
        }
    }
    
}

// MARK: - CurrentLight
extension ViewController {
    enum CurrentLight {
        case red, yellow, green
    }
}
