import UIKit

struct appFontNames {
	static let normal = "AvenirNextCondensed-Medium"
	static let bold = "AvenirNextCondensed-Heavy"
	static let italic = "AvenirnextCondensed-MediumItalic"
}

extension UIFont {
	class func myFont(ofSize size: CGFloat) -> UIFont {
		return UIFont(name: appFontNames.normal, size: size)!
	}
	class func myBoldFont(ofSize size: CGFloat) -> UIFont {
		return UIFont(name: appFontNames.bold, size: size)!
	}
	class func myItallicFont(ofSize size: CGFloat) -> UIFont {
		return UIFont(name: appFontNames.italic, size: size)!
	}
}
