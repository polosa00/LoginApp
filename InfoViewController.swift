//
//  InfoViewController.swift
//  LoginApp
//
//  Created by Александр Полочанин on 5.04.23.
//

import UIKit

class InfoViewController: UINavigationController {

    private let color1 = UIColor(
        red: 200 / 255,
        green: 119 / 255,
        blue: 135 / 255,
        alpha: 1
    )
    private let color2 = UIColor(
        red: 104 / 255,
        green: 126 / 255,
        blue: 184 / 255,
        alpha: 1
    )
    private let gradientLayer = CAGradientLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
            gradientLayer.frame = view.frame
            gradientLayer.colors = [color1.cgColor, color2.cgColor]
            gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
            gradientLayer.endPoint = CGPoint(x: 0.0, y: 1.0)
            
            view.layer.insertSublayer(gradientLayer, at: 0)
    }

}
