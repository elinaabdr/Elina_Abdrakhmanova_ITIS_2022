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

//        imageAnimal.image = UIImage(named: "image_1")
                                    
        let random = Int32.random(in: 0...8)
        let imageName = "image_\(random).jpeg"
        imageAnimal.image = UIImage(named: imageName)
    
    }
   
    
    @IBAction func closeDidTap(_ sender: Any) {
        self.dismiss(animated: true)
       
    }
    
}
