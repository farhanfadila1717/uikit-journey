//
//  TextFieldsViewController.swift
//  UIKitTutorial
//
//  Created by Farhan Fadila on 16/10/26.
//

import UIKit

class TextFieldsViewController: UIViewController {
    private var textField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Search..."
        tf.font = .systemFont(ofSize: 14)
        tf.borderStyle = .roundedRect
        tf.keyboardType = .emailAddress
        tf.returnKeyType = .search
        return tf
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.addSubview(textField)
        view.backgroundColor = .systemBackground
        
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            textField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textField.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            textField.widthAnchor.constraint(equalToConstant: view.frame.width - 64),
        ])
    }
    
}

//#Preview {
//    TextFieldsViewController()
//}
