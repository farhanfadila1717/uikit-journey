//
//  ScrollViewsViewController.swift
//  UIKitTutorial
//
//  Created by Farhan Fadila on 16/10/26.
//

import UIKit

class ScrollViewsViewController: UIViewController {
    private var scrollView = UIScrollView()
    
    private var stackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.spacing = 16
        
        return stack
    }()
    
    private let rectHeight: CGFloat = 200
    private let numberOfRects = 20
    private let colors: [UIColor] = [
        .red,
        .blue,
        .green,
        .yellow,
        .purple,
        .orange,
        .systemPink,
        .cyan,
        .brown,
        .gray
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        
        for i in 1..<numberOfRects {
            let rect = createRect()
            let color = colors[i % colors.count]
            rect.backgroundColor = color
            
            stackView.addArrangedSubview(rect)
        }
        
        view.addSubview(scrollView)
        
        scrollView.delegate = self
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.leftAnchor.constraint(equalTo: view.leftAnchor),
            scrollView.rightAnchor.constraint(equalTo: view.rightAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            stackView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor)
        ])
        
        scrollView.contentSize.height = (rectHeight * CGFloat(numberOfRects)) + 64
    }
    
    private func createRect() -> UIView {
        let view = UIView()
        
        view.layer.cornerRadius = 16
        
        NSLayoutConstraint.activate([
            view.heightAnchor.constraint(equalToConstant: rectHeight),
            view.widthAnchor.constraint(equalToConstant: rectHeight)
        ])
        
        return view
    }

}

extension ScrollViewsViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        print("DEBUG: Scrollview did decel")
    }
    
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        print("DEBUG: Scrollview did end dragging")
    }
}

#Preview {
    ScrollViewsViewController()
}
