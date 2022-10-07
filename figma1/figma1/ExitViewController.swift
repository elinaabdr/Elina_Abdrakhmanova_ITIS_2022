//
//  ExitViewController.swift
//  figma1
//
//  Created by Элина Абдрахманова on 07.10.2022.
//

import UIKit

class ExitViewController: UIViewController {
    
    @IBOutlet var usernameLabel: UILabel!
    
    var greetingLabel: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        usernameLabel.text = "Hello, \(greetingLabel ?? "User")"
    }
    
    
    @IBAction func signOutDidTap(_ sender: Any) {
        guard let viewController = storyboard?.instantiateViewController(withIdentifier: "ViewController") else {return}
        viewController.modalPresentationStyle = .fullScreen
        present(viewController, animated: true)
        
    }
}
