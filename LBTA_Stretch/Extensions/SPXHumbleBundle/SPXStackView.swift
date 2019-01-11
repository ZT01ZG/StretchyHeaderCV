import UIKit

class SPXStackView: UIStackView {
    required init(color: UIColor = UIColor.orange, axisLayout: NSLayoutConstraint.Axis) {
        super.init(frame: .zero)
        backgroundColor = color
        translatesAutoresizingMaskIntoConstraints = false
        distribution = .fillEqually
        spacing = 5
        axis = axisLayout
    }
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not bee implemented...")
    }
}