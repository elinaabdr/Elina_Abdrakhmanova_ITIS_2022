//
//  HomeViewController.swift
//  figma1
//
//  Created by Элина Абдрахманова on 07.10.2022.
//

import UIKit

class HomeViewController: UIViewController {
    

    @IBOutlet var usernameLabel: UILabel!
    
    var greetingLabel: String!
    
    override func viewDidLoad() {
         super.viewDidLoad()
        
        usernameLabel.text = "Hello, \(greetingLabel ?? "User")"
    }
    
    @IBAction func animalImageDidTap(_ sender: Any) {
        let animaImageVC = storyboard?.instantiateViewController(identifier: "AnimalImageViewController")
        animaImageVC?.modalPresentationStyle = .fullScreen
        present(animaImageVC!, animated: true)
    }
    
    
    @IBAction func browseCatalogDidTap(_ sender: Any) {
        let browseCatalogVC = storyboard?.instantiateViewController(withIdentifier: "BrowseCatalogViewController") as! BrowseCatalogViewController
        navigationController?.pushViewController(browseCatalogVC, animated: true)
    }
}
