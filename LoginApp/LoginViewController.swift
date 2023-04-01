//
//  ViewController.swift
//  LoginApp
//
//  Created by Elena Sharipova on 30.03.2023.
//

import UIKit

final class LoginViewController: UIViewController {
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    @IBOutlet var loginButton: UIButton!
    
    private let login = "Geralt"
    private let password = "Zireael"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginButton.layer.cornerRadius = 10
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else {
            return
        }
        welcomeVC.userName = "Hello, \(login)!"
    }
    
    @IBAction func loginButtonTapped() {
        guard userNameTF.text == login && passwordTF.text == password else {
            showAlert(
                withTitle: "Invalid login or password",
                andMessage: "Please, enter correct login and password",
                andHandler: { _ in
                    self.passwordTF.text = ""
                }
            )
            return
        }
    }
    
    @IBAction func forgotUserNameButtonTapped() {
        showAlert(
            withTitle: "Oops!",
            andMessage: "Your name is \(login) 😉",
            andHandler: nil
        )
    }
    
    @IBAction func forgotPasswordButtonTapped() {
        showAlert(
            withTitle: "Oops!",
            andMessage: "Your password is \(password) 😉",
            andHandler: nil
        )
    }
}

extension LoginViewController {
    private func showAlert(
        withTitle title: String,
        andMessage message: String,
        andHandler: ((UIAlertAction) -> Void)?
    ) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        
        let okAction = UIAlertAction(
            title: "Ok".uppercased(),
            style: .default,
            handler: andHandler
        )
        
        alert.addAction(okAction)
        
        present(alert, animated: true)
    }
}

extension LoginViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
}
