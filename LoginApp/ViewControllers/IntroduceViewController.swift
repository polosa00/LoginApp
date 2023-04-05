//
//  IntroduceViewController.swift
//  LoginApp
//
//  Created by Александр Полочанин on 4.04.23.
//

import UIKit

final class IntroduceViewController: UIViewController {

    // MARK: - Properties
    
    @IBOutlet var mainImage: UIImageView!
    
    @IBOutlet var fullNameLabel: UILabel!
    @IBOutlet var nikNameLabel: UILabel!
    @IBOutlet var locationLabel: UILabel!
    @IBOutlet var socialLabel: UILabel!

    var nikName = ""
    var fullName = ""
    var location = ""
    var image = ""
    var social = ""
    
    // MARK: - Override functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        fullNameLabel.text = fullName
        nikNameLabel.text = nikName
        locationLabel.text = location
        socialLabel.text = social
        
        mainImage.image = UIImage(named: image)
        mainImage.layer.borderWidth = CGFloat(4)
        mainImage.layer.cornerRadius = 100
        mainImage.layer.borderColor = .init(
            red: 50 / 255,
            green: 83 / 255,
            blue: 149 / 255,
            alpha: 1
        )
        
        setGradient()
    }
}

// MARK: - extensions

extension IntroduceViewController {
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
