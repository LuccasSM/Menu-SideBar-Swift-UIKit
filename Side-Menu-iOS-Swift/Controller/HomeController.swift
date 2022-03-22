//
//  HomeController.swift
//  Side-Menu-iOS-Swift
//
//  Created by Luccas Santana Marinho on 22/03/22.
//

import UIKit

class HomeController: UIViewController {

    //MARK: - Properties
    
    var delegate: HomeControllerDelegate?
    
    //MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        configureNavigatoinBar()
    }
    
    //MARK: - Handlers
    
    @objc func handleMenuToogle() {
        delegate?.handleMenuToogle(formanuOption: nil)
    }
    
    func configureNavigatoinBar() {
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "menu")?.withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleMenuToogle))
    }
}
