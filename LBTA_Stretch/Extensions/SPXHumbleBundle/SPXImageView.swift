import UIKit

class SPXImageView: UIImageView {
	required init() {
		super.init(frame: .zero)
//		backgroundColor = UIColor.red
		translatesAutoresizingMaskIntoConstraints = false
		clipsToBounds = true
		contentMode = .scaleAspectFit

	}

	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
}

extension SPXImageView {
	public func applyRoundedCorners() {
		layer.cornerRadius = 8
	}
}
