//
//  AnimalImageViewController.swift
//  figma1
//
//  Created by Элина Абдрахманова on 07.10.2022.
//

import UIKit

class AnimalImageViewController: UIViewController {
    
    @IBOutlet var imageAnimal: UIImageView!
    
    @IBOutlet weak var closeButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        
        let random = Int32.random(in: 0...8)
        let imageName = "image_\(random).jpeg"
        imageAnimal.image = UIImage(named: imageName)
    
    }
    
    private func setupView() {
        closeButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(closeButton)
        NSLayoutConstraint.activate([
            closeButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
        ])
        
        imageAnimal.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(imageAnimal)
        NSLayoutConstraint.activate([
            imageAnimal.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            imageAnimal.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            imageAnimal.topAnchor.constraint(equalTo: view.topAnchor, constant: 40),
            imageAnimal.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20)
        ])
    }
   
    
    @IBAction func closeDidTap(_ sender: Any) {
        self.dismiss(animated: true)
       
    }
    
}
