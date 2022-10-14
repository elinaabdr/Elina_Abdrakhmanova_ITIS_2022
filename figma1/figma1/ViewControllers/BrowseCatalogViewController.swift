//
//  BrowseCatalogViewController.swift
//  figma1
//
//  Created by Элина Абдрахманова on 07.10.2022.
//

import UIKit

class BrowseCatalogViewController: UIViewController {

    @IBOutlet var pageNumber: UILabel!
    
    @IBOutlet weak var browseButton: UIButton!
    var page = 1
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        
        pageNumber.text = "Catalog, Page: \(page)"
    }
    
    private func setupView() {
        pageNumber.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(pageNumber)
        NSLayoutConstraint.activate([
            pageNumber.topAnchor.constraint(equalTo: view.topAnchor, constant: 80),
            pageNumber.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
        ])
        
        browseButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(browseButton)
        NSLayoutConstraint.activate([
            browseButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 140),
            browseButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }

    @IBAction func browsrCatalogDidTap(_ sender: Any) {
        let newbrowseVC = storyboard?.instantiateViewController(identifier: "BrowseCatalogViewController") as! BrowseCatalogViewController
        newbrowseVC.page = page + 1
        navigationController?.pushViewController(newbrowseVC, animated: true)
    }
}
