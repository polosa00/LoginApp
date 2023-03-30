//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Александр Полочанин on 31.03.23.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet var greetingLabel: UILabel!
    
    var greetingText: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let color1 = UIColor(red: 200 / 255, green: 119 / 255, blue: 135 / 255, alpha: 1).cgColor
        let color2 = UIColor(red: 104 / 255, green: 126 / 255, blue: 184 / 255, alpha: 1).cgColor
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.view.frame
        gradientLayer.colors = [color1, color2]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 0.0, y: 1.0)
        self.view.layer.insertSublayer(gradientLayer, at: 0)
        
        greetingLabel.text = greetingText
    }
    

    @IBAction func tappedLogOutButton(_ sender: UIButton) {
    }
    
}
