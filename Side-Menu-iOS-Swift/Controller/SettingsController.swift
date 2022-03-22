//
//  SettingsController.swift
//  Side-Menu-iOS-Swift
//
//  Created by Luccas Santana Marinho on 22/03/22.
//

import UIKit

class SettingsController: UIViewController {
    
    //MARK: - Properties
    
    //MARK: - Init

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        
        self.view.addSubview(viewSettings)
        viewSettings.widthAnchor.constraint(equalToConstant: 50).isActive = true
        viewSettings.heightAnchor.constraint(equalToConstant: 50).isActive = true
        viewSettings.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        viewSettings.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
    }
    
    //MARK: - Handlers
    
    let viewSettings: UIButton = {
        let view = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemCyan
        view.addTarget(self, action: #selector(returnButton), for: .touchUpInside)
        return view
    }()
    
    
    //MARK: - Helper Functions
    
    @objc func returnButton() {
        self.dismiss(animated: true, completion: nil)
    }
}
