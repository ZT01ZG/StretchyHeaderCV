import UIKit

class SPXView: UIView {
    required init() {
        super.init(frame: .zero)
        backgroundColor = UIColor(hex: 0xFF9900)
		translatesAutoresizingMaskIntoConstraints = false
        
    }
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not bee implemented...")
    }
}
