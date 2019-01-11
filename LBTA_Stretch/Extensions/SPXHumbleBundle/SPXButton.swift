import UIKit

class SPXButton: UIButton {
    
    required init(title: String, color: UIColor) {
        super.init(frame: .zero)
        backgroundColor = color
        translatesAutoresizingMaskIntoConstraints = false
        titleLabel?.font = UIFont.myFont(ofSize: 40)
        setTitle(title, for: .normal)
        layer.cornerRadius = 20
        layer.borderColor = UIColor.black.cgColor
        layer.borderWidth = 4
		showsTouchWhenHighlighted = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented...")
    }
}
