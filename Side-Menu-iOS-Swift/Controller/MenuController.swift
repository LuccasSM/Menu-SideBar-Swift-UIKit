//
//  MenuController.swift
//  Side-Menu-iOS-Swift
//
//  Created by Luccas Santana Marinho on 22/03/22.
//

import UIKit

private let reuseIdentifier = "MenuOptionCell"

class MenuController: UIViewController {

    //MARK: - Properties
    
    var tableView: UITableView!
    var delegate: HomeControllerDelegate?
    
    //MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
    }
    
    //MARK: - Handlers
    
    func configureTableView() {
        tableView = UITableView()
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(MenuOpcionalCell.self, forCellReuseIdentifier: reuseIdentifier)
        tableView.backgroundColor = .systemOrange
        tableView.rowHeight = 80
        tableView.alwaysBounceVertical = false
        tableView.separatorInset = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 95)
        
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
    }
}

extension MenuController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as! MenuOpcionalCell
        cell.selectionStyle = .none
        
        let menuOption = MenuOption(rawValue: indexPath.row)
        cell.descriptionLabel.text = menuOption?.description
        cell.iconImageView.image = menuOption?.image
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let menuOption = MenuOption(rawValue: indexPath.row)
        delegate?.handleMenuToogle(formanuOption: menuOption)
    }
}
