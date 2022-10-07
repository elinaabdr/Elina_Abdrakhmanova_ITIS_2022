//
//  BrowseCatalogViewController.swift
//  figma1
//
//  Created by Элина Абдрахманова on 07.10.2022.
//

import UIKit

class BrowseCatalogViewController: UIViewController {

    @IBOutlet var pageNumber: UILabel!
    
    var page = 1
    override func viewDidLoad() {
        super.viewDidLoad()

        pageNumber.text = "Catalog, Page: \(page)"
    }

    @IBAction func browsrCatalogDidTap(_ sender: Any) {
        let newbrowseVC = storyboard?.instantiateViewController(identifier: "BrowseCatalogViewController") as! BrowseCatalogViewController
        newbrowseVC.page = page + 1
        navigationController?.pushViewController(newbrowseVC, animated: true)
    }
}
