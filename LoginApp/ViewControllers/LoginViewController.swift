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
    
    private let user = User.getUser()
   
    // MARK: - Override functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTF.text = user.user
        userPasswordTF.text = user.password

    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.greetingText = user.user
    }
    
    // MARK: - IBActions
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = nil
        userPasswordTF.text = nil
    }
    
    @IBAction func pressedLoginButton() {
        guard
            userNameTF.text == user.user,
            userPasswordTF.text == user.password else {
            showAlert(
                withTitle: "Incorrect user name or password",
                andMessage: "Try again!"
            )
            return
        }
    
        performSegue(withIdentifier: "showWelcomeVC", sender: nil)
    }
    
    @IBAction func tappedForgotData(_ sender: UIButton) {
        sender.tag == 0
            ? showAlert(withTitle: "NO PROBLEM",andMessage: "Your name is \(user.user)😎")
            : showAlert(withTitle: "NO PROBLEM",andMessage: "Your password is \(user.password)😎")
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
            self.userPasswordTF.text = nil
        }
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

