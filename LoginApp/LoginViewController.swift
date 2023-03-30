//
//  ViewController.swift
//  LoginApp
//
//  Created by Александр Полочанин on 30.03.23.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.view.endEditing(true)
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.greetingText = "Welcome, Alex!"
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
    }


    @IBAction func tappedLogginButton(_ sender: UIButton) {
    }
    
    @IBAction func tappedForgotName(_ sender: UIButton) {
        showAlert(withTitle: "NO PROBLEM", andMessage: "Your name is Alex😎")
    }
    
    
    @IBAction func tappedForgotPassword(_ sender: Any) {
        showAlert(withTitle: "NO PROBLEM", andMessage: "Your password is 1111!")
    }
}


extension LoginViewController {
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "Ok", style: .default)
        
        alert.addAction(okAction)
        present(alert, animated: true)
        
        
    }
}

