//
//  ButtonsViewController.swift
//  UIKitTutorial
//
//  Created by Farhan Fadila on 14/10/26.
//

import UIKit

class ButtonsViewController: UIViewController {
    
    private var showButtonName: UIButton = {
        let button = UIButton(type: .system)
        
        button.setTitle("Show Name", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    } ()
    
    private var nameLabel: UILabel = {
        let label = UILabel()
        label.text = "My name is Farhan!"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.isHidden = true
    
        return label
    }()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        showButtonName.addTarget(self, action: #selector(onToggleButtonTapped), for: .touchUpInside)
        
        view.addSubview(showButtonName)
        showButtonName.widthAnchor.constraint(equalToConstant: 350).isActive = true
        showButtonName.heightAnchor.constraint(equalToConstant: 44).isActive = true
        showButtonName.backgroundColor = .systemBlue
        showButtonName.tintColor = .white
        showButtonName.layer.cornerRadius = 10
        showButtonName.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        showButtonName.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        view.addSubview(nameLabel)
        nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        nameLabel.topAnchor.constraint(equalTo: showButtonName.bottomAnchor, constant: 10).isActive = true
    }
    
    @objc func onToggleButtonTapped() {
        nameLabel.isHidden.toggle()
        let title = nameLabel.isHidden ? "Show Name" : "Hide Name"
        showButtonName.setTitle(title, for: .normal)
    }
}

#Preview {
    ButtonsViewController()
}
