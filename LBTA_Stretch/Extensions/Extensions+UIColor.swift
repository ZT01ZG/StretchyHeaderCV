//
//  SPXColor.swift
//  Arkyve
//
//  Created by Zachary Hagman on 11/25/18.
//  Copyright © 2018 Spork and Toast, LLC. All rights reserved.
//

import UIKit

extension UIColor {
	//MARK: - Better Hex Color Reader
	convenience init(red: Int, green: Int, blue: Int) {
		assert(red >= 0 && red <= 255, "Invalid red component")
		assert(green >= 0 && green <= 255, "Invalid green component")
		assert(blue >= 0 && blue <= 255, "Invalid blue color")
		self.init(red: CGFloat(red) / 255, green: CGFloat(green) / 255, blue: CGFloat(blue) / 255, alpha: 1.0)
	}
	convenience init(hex: Int) {
		self.init(red:(hex >> 16) & 0xff, green: (hex >> 8) & 0xff, blue: hex & 0xff)
	}
}
