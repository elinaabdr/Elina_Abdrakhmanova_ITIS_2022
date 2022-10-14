//
//  ViewController.swift
//  figma1
//
//  Created by Элина Абдрахманова on 07.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var usernameTextField: UITextField!
    
    @IBOutlet var passwordTextField: UITextField!
    
    @IBOutlet  var signInButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupStackView()
        
    }
    
    private func setupStackView() {
        let stackView = UIStackView(arrangedSubviews: [usernameTextField,passwordTextField])
        stackView.axis = .vertical
        stackView.spacing = 10
        stackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stackView)
        
        stackView.addArrangedSubview(signInButton)
        
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
        ])
    }
    
    @IBAction func buttonDidTap(_ sender: Any) {
        
        if usernameTextField.text?.isEmpty == true || passwordTextField.text?.isEmpty == true {
            showAlert(signInButton)
        } else {
            
            guard let tabBarController = storyboard?.instantiateViewController(withIdentifier: "TabBarController") as? UITabBarController else {return}
            guard let viewControllers = tabBarController.viewControllers else {return}
            tabBarController.modalPresentationStyle = .fullScreen
            
            viewControllers.forEach {
                if let navigationVC = $0 as? UINavigationController {
                    if  let homeVC = navigationVC.topViewController as? HomeViewController  {
                        homeVC.greetingLabel = usernameTextField.text
                        homeVC.modalPresentationStyle = .fullScreen
                    } else if let exitVC = navigationVC.viewControllers.last as? ExitViewController {
                        exitVC.greetingLabel = usernameTextField.text
                        exitVC.modalPresentationStyle = .fullScreen
                    }
                }
            }
            present(tabBarController, animated: true)
        }
    }
    
    @IBAction func showAlert(_ sender: UIButton) {
        let alert = UIAlertController(title: "", message: "Wrong username or password", preferredStyle: .alert)
        let okBtn = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okBtn)
        present(alert, animated: true,completion: nil)
    }

}

