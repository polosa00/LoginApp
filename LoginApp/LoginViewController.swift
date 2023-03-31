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
    
    private let validNameUser = "User"
    private let validPasswordUser = "1111"
    
    // MARK: - Override functions
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard
            userNameTF.text == validNameUser,
            userPasswordTF.text == validPasswordUser else {
            showAlert(
                withTitle: "Incorrect user name or password",
                andMessage: "Try again!"
            )
            return
        }
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        guard let name = userNameTF.text  else {return}
        
        welcomeVC.greetingText = name
    }
    
    // MARK: - IBActions
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = nil
        userPasswordTF.text = nil
    }
    
    @IBAction func tappedForgotName(_ sender: UIButton) {
        showAlert(withTitle: "NO PROBLEM", andMessage: "Your name is User😎")
    }
    
    @IBAction func tappedForgotPassword(_ sender: Any) {
        showAlert(withTitle: "NO PROBLEM", andMessage: "Your password is 1111😎")
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
            self.userNameTF.text = nil
            self.userPasswordTF.text = nil
        }
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

