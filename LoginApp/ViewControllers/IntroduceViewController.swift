//
//  IntroduceViewController.swift
//  LoginApp
//
//  Created by Александр Полочанин on 4.04.23.
//

import UIKit

class IntroduceViewController: UIViewController {

    @IBOutlet var mainImage: UIImageView!
    
    @IBOutlet var fullNameLabel: UILabel!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    
    var name = ""
    var surname = ""
    var fullName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        fullNameLabel.text = fullName
        nameLabel.text = name
        surnameLabel.text = surname
        
        
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
        
        
        mainImage.layer.borderWidth = CGFloat(4)
        mainImage.layer.borderColor = .init(red: 50 / 255, green: 83 / 255, blue: 149 / 255, alpha: 1)
        mainImage.layer.cornerRadius = 100

        print("ViewDidLoad \(mainImage.frame.height)")
       
    }
    
  
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
