//
//  AboutMeViewController.swift
//  LoginApp
//
//  Created by Александр Полочанин on 4.04.23.
//

import UIKit

final class AboutMeViewController: UIViewController {
    
    // MARK: - Properties
    
    @IBOutlet var aboutMeLabel: UILabel!
    
    var textForTitle = ""
    var descriptionMe = ""
    var sendToInfoVC = ""
    
    // MARK: - Override functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        aboutMeLabel.text = descriptionMe
        navigationItem.title = textForTitle
        
        navigationController?.navigationBar.prefersLargeTitles = true // устаноавливаю через код Large Title (через сториборд не ставится) и не меняется цвет
        navigationController?.navigationBar.barTintColor = .white
        navigationController?.navigationBar.tintColor = .white
        
        setGradient()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let infoVC = segue.destination as? ThanksViewController else { return }
        infoVC.textForLabel = sendToInfoVC
    }
}

    // MARK: - extensions

extension AboutMeViewController {
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

