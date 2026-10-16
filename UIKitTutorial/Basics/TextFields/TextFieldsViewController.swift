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
    
    private var uiLabel: UILabel = {
        let label = UILabel()
        
        return label
    } ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.delegate = self
        textField.addTarget(self, action: #selector(onEditingChanged), for: .editingChanged)
        // Do any additional setup after loading the view.
        view.addSubview(textField)
        view.addSubview(uiLabel)
        view.backgroundColor = .systemBackground
        
        textField.translatesAutoresizingMaskIntoConstraints = false
        uiLabel.translatesAutoresizingMaskIntoConstraints = false
        
        
        NSLayoutConstraint.activate([
            textField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textField.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            textField.widthAnchor.constraint(equalToConstant: view.frame.width - 64),
            uiLabel.topAnchor.constraint(equalTo: textField.bottomAnchor, constant: 10),
            uiLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    @objc func onEditingChanged(_ sender: UITextField) {
        uiLabel.text = sender.text
    }
    
}

extension TextFieldsViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("DEBUG: Return key tapped")
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("DEBUG: Textfield begin editing")
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("DEBUG: Textfield end editing")
    }
}

//#Preview {
//    TextFieldsViewController()
//}
