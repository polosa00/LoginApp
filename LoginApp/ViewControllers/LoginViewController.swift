//
//  ViewController.swift
//  LoginApp
//
//  Created by Александр Полочанин on 30.03.23.
//

import UIKit

final class LoginViewController: UIViewController {

    // MARK: - Properties
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var userPasswordTF: UITextField!
    
    private let userName = "User"
    private let userPassword = "1111"
    
    // MARK: - Override functions
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
//        guard let name = userNameTF.text  else { return }  ---> для передачи данных из текстФилда
        welcomeVC.greetingText = userName
    }
    
    // MARK: - IBActions
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = nil
        userPasswordTF.text = nil
    }
    
    @IBAction func pressedLoginButton() {
        guard
            userNameTF.text == userName,
            userPasswordTF.text == userPassword else {
            showAlert(
                withTitle: "Incorrect user name or password",
                andMessage: "Try again!"
            )
            return
        }
        
        performSegue(withIdentifier: "showWelcomeVC", sender: nil)
    }
    
    @IBAction func tappedForgotName(_ sender: UIButton) {
        showAlert(
            withTitle: "NO PROBLEM",
            andMessage: "Your name is \(userName)😎"
        )
    }
    
    @IBAction func tappedForgotPassword(_ sender: Any) {
        showAlert(
            withTitle: "NO PROBLEM",
            andMessage: "Your password is \(userPassword)😎"
        )
    }
}

    // MARK: - Extension

extension LoginViewController {
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "Ok", style: .default) { _ in
//            self.userNameTF.text = nil
            self.userPasswordTF.text = nil
        }
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

