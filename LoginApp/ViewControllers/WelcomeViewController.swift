//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Александр Полочанин on 31.03.23.
//

import UIKit

final class WelcomeViewController: UIViewController {

    // MARK: - Properties
    
    @IBOutlet var greetingLabel: UILabel!
    @IBOutlet var introduceLabel: UILabel!
    
    var greetingText = ""
    var introduceText = ""
    
    // MARK: - ViewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setGradient()
        
        greetingLabel.text = "Welcome, \(greetingText)!"
        introduceLabel.text = "My name is \(introduceText)."
    }
}

    // MARK: - extensions

extension WelcomeViewController {
    private func setGradient() {
        let color1 = UIColor(
            red: 200 / 255,
            green: 119 / 255,
            blue: 135 / 255,
            alpha: 1
        )
        let color2 = UIColor(
            red: 104 / 255,
            green: 126 / 255,
            blue: 184 / 255,
            alpha: 1
        )
        
        let gradientLayer = CAGradientLayer()
        
        gradientLayer.frame = view.frame
        gradientLayer.colors = [color1.cgColor, color2.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 0.0, y: 1.0)
        
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
}
