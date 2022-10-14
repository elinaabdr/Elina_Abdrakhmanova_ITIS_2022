//
//  ExitViewController.swift
//  figma1
//
//  Created by Элина Абдрахманова on 07.10.2022.
//

import UIKit

class ExitViewController: UIViewController {
    
    @IBOutlet var usernameLabel: UILabel!
    
    @IBOutlet weak var signOutButton: UIButton!
    var greetingLabel: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        usernameLabel.text = "Hello, \(greetingLabel ?? "User")"
    }
    
    private func setupView() {
        usernameLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(usernameLabel)
        NSLayoutConstraint.activate([
            usernameLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 80),
            usernameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            usernameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
        
        signOutButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(signOutButton)
        NSLayoutConstraint.activate([
            signOutButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 200),
            signOutButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    
    @IBAction func signOutDidTap(_ sender: Any) {
        dismiss(animated: true)
    }
}
