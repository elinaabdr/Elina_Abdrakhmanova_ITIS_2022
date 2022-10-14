//
//  HomeViewController.swift
//  figma1
//
//  Created by Элина Абдрахманова on 07.10.2022.
//

import UIKit

class HomeViewController: UIViewController {
    

    @IBOutlet weak var browseButton: UIButton!
    @IBOutlet weak var imageButton: UIButton!
    @IBOutlet var usernameLabel: UILabel!
    
    var greetingLabel: String!
    
    override func viewDidLoad() {
         super.viewDidLoad()
        setupStackView()
        usernameLabel.text = "Hello, \(greetingLabel ?? "User")"
    }
    
    private func setupStackView() {
        usernameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(usernameLabel)
        
        NSLayoutConstraint.activate([
            usernameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            usernameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            usernameLabel.topAnchor.constraint(equalTo: view.topAnchor, constant:80),
        ])
        
        let stackView = UIStackView(arrangedSubviews: [browseButton, imageButton ])
        stackView.axis = .vertical
        stackView.spacing = 20
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 140)
        ])
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
