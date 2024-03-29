//
//  ViewController.swift
//  HWLogin
//
//  Created by 1234 on 14.02.2023.
//

import UIKit

final class LoginViewController: UIViewController {
    
//    MARK: - IBOutlet
    @IBOutlet var logInButton: UIButton!
    
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let wellcomeVC = segue.destination as? WellcomeViewController else {return}
        wellcomeVC.wellcomeText = gleb.person.name
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.text = gleb.user
        passwordTextField.text = gleb.password
        
        logInButton.layer.cornerRadius = 10
    }
//    MARK: - Tapped Buttons
    @IBAction func logInButtonTapped() {
        if nameTextField.text == gleb.user &&
            passwordTextField.text == gleb.password {
        }
        else {
            showAlert(withTitle: "Неправильный логин или пароль", andMessage: "Пожалуйста введите логин и пароль");
            passwordTextField.text = ""
        }
    }
   
    @IBAction func forgotUserNameTapped() {
        showAlert(withTitle: "Напоминаю:", andMessage: "Ваш логин 12")
    }
    @IBAction func forgotPasswordTapped() {
        showAlert(withTitle: "Напоминаю:", andMessage: "Ваш пароль 123")
    }
    
//    MARK: - Other Func
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        nameTextField.text = ""
        passwordTextField.text = ""
    }
}
// MARK: - Alert Controller
extension LoginViewController {
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
