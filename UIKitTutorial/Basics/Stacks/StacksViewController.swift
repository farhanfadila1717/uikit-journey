//
//  StacksViewController.swift
//  UIKitTutorial
//
//  Created by Farhan Fadila on 16/10/26.
//

import UIKit

class StacksViewController: UIViewController {
    private var stackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 16
        
        return stack
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let rect1 = createRect()
        rect1.backgroundColor = .systemRed
        
        let rect2 = createRect()
        rect2.backgroundColor = .systemYellow
        
        let rect3 = createRect()
        rect3.backgroundColor = .systemGreen
        
        stackView.addArrangedSubview(rect1)
        stackView.addArrangedSubview(rect2)
        stackView.addArrangedSubview(rect3)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    private func createRect() -> UIView {
        let view = UIView()
        
        view.layer.cornerRadius = 16
        
        NSLayoutConstraint.activate([
            view.heightAnchor.constraint(equalToConstant: 100),
            view.widthAnchor.constraint(equalToConstant: 100)
        ])
        
        return view
    }
}

#Preview {
    StacksViewController()
}
