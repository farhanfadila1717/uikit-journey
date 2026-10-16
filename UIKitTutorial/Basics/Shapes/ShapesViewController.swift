
import UIKit

final class ShapesViewController: UIViewController {

    private let shapeSize: CGFloat = 100

    private lazy var rect = makeShape(
        color: .red,
        cornerRadius: 16
    )

    private lazy var circle = makeShape(
        color: .purple,
        cornerRadius: shapeSize / 2
    )

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(rect)
        view.addSubview(circle)

        NSLayoutConstraint.activate([
            rect.widthAnchor.constraint(equalToConstant: shapeSize),
            rect.heightAnchor.constraint(equalToConstant: shapeSize),
            rect.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            rect.centerYAnchor.constraint(equalTo: view.centerYAnchor),

            circle.widthAnchor.constraint(equalToConstant: shapeSize),
            circle.heightAnchor.constraint(equalToConstant: shapeSize),
            circle.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            circle.topAnchor.constraint(
                equalTo: rect.bottomAnchor,
                constant: 20
            )
        ])
    }

    private func makeShape(
        color: UIColor,
        cornerRadius: CGFloat
    ) -> UIView {
        let shape = UIView()
        shape.backgroundColor = color
        shape.layer.cornerRadius = cornerRadius
        shape.translatesAutoresizingMaskIntoConstraints = false
        return shape
    }
}

#Preview {
    ShapesViewController()
}
