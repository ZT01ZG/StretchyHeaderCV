import UIKit

class SPXLabel: UILabel {
    required init(title: String, color: UIColor, colorOfLabelText: UIColor = UIColor.white) {
        super.init(frame: .zero)
        backgroundColor = color
        textColor = colorOfLabelText
        translatesAutoresizingMaskIntoConstraints = false
        numberOfLines = 0
		adjustsFontSizeToFitWidth = true
        textAlignment = .center
        attributedText = NSMutableAttributedString(string: title, attributes: [
            NSAttributedString.Key.font : UIFont.myFont(ofSize: 24)
            ])

    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("Init(coder:) has not been implemented...")
    }
}

