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
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        
        viewControllers.forEach { viewController in
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.greetingText = user.user
                welcomeVC.introduceText = user.person.fullName
            } else if let introduceVC = viewController as? IntroduceViewController {
                introduceVC.fullName = user.person.fullName
                introduceVC.name = user.person.name
                introduceVC.surname = user.person.surname
                introduceVC.image = user.person.personData.image
                introduceVC.social = user.person.personData.instagram
            } else if let navigationController = viewController as? UINavigationController {
                guard
                    let aboutMeVC = navigationController.topViewController
                        as? AboutMeViewController else { return }
                aboutMeVC.title = user.person.fullName
            }
        }
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
                withTitle: "Неверное имя пользователя или пароль",
                andMessage: "Попробуйте снова!"
            )
            return
        }
    
        performSegue(withIdentifier: "showWelcomeVC", sender: nil)
    }
    
    @IBAction func tappedForgotData(_ sender: UIButton) {
        sender.tag == 0
            ? showAlert(withTitle: "Без паники",andMessage: "Ваше имя \(user.user)😎")
            : showAlert(withTitle: "Без паники",andMessage: "Ваш пароль \(user.password)😎")
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
        let okAction = UIAlertAction(title: "Ок", style: .default) { _ in
            self.userPasswordTF.text = nil
        }
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

