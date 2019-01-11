//
//  Extension+UIImage.swift
//  ThyngsTwo
//
//  Created by Zachary Hagman on 12/19/18.
//  Copyright © 2018 Spork and Toast, LLC. All rights reserved.
//

import UIKit

extension UIImage {

	func imageResize (sizeChange:CGSize)-> UIImage{

		let hasAlpha = true
		let scale: CGFloat = 0.0 // Use scale factor of main screen

		UIGraphicsBeginImageContextWithOptions(sizeChange, !hasAlpha, scale)
		self.draw(in: CGRect(origin: CGPoint.zero, size: sizeChange))

		let scaledImage = UIGraphicsGetImageFromCurrentImageContext()
		return scaledImage!
	}

}
