//
//  LabelViewController.swift
//  UIKitTutorial
//
//  Created by Farhan Fadila on 14/10/26.
//
import UIKit

class LabelViewController: UIViewController {
    private var textLabel = UILabel()
    
    private var subtitleLabel: UILabel = {
        let label = UILabel()
        
        label.text = "Hi guys my name is Farhan"
        label.textColor = .gray
        
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground

        textLabel.text = "Hello World!"
        textLabel.font = .boldSystemFont(ofSize: 24)
        textLabel.textColor = .label

        view.addSubview(textLabel)
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        textLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        textLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true

        view.addSubview(subtitleLabel)
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        subtitleLabel.topAnchor.constraint(equalTo: textLabel.bottomAnchor, constant: 8).isActive = true
        subtitleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
}

#Preview {
    LabelViewController()
}
