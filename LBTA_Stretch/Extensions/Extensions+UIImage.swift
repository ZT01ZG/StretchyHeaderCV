//
//  Extensions+UIImage.swift
//  ThyngsTwo
//
//  Created by Zachary Hagman on 12/16/18.
//  Copyright © 2018 Spork and Toast, LLC. All rights reserved.
//

import UIKit

extension UIImage {
	func resize(width: CGFloat) -> UIImage {
		let height = (width/self.size.width)*self.size.height
		return self.resize(size: CGSize(width: width, height: height))
	}

	func resize(height: CGFloat) -> UIImage {
		let width = (height/self.size.height)*self.size.width
		return self.resize(size: CGSize(width: width, height: height))
	}

	func resize(size: CGSize) -> UIImage {
		let widthRatio  = size.width/self.size.width
		let heightRatio = size.height/self.size.height
		var updateSize = size
		if(widthRatio > heightRatio) {
			updateSize = CGSize(width:self.size.width*heightRatio, height:self.size.height*heightRatio)
		} else if heightRatio > widthRatio {
			updateSize = CGSize(width:self.size.width*widthRatio,  height:self.size.height*widthRatio)
		}
		UIGraphicsBeginImageContextWithOptions(updateSize, false, UIScreen.main.scale)
		self.draw(in: CGRect(origin: .zero, size: updateSize))
		let newImage = UIGraphicsGetImageFromCurrentImageContext()
		UIGraphicsEndImageContext()
		return newImage!
	}
}
