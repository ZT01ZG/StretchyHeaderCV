//
//  ScaledHeightImageView.swift
//  LBTA_Stretch
//
//  Created by Zachary Hagman on 1/12/19.
//  Copyright © 2019 Spork and Toast, LLC. All rights reserved.
//

import UIKit

class ScaledHeightImageView: UIImageView {
	override var intrinsicContentSize: CGSize {
		if let myImage = self.image {
			let myImageWidth = myImage.size.width
			let myImageHeight = myImage.size.height
			let myViewWidth = self.frame.size.width

			let ratio = myViewWidth / myImageHeight
			let scaledHeight = myImageHeight * ratio

			return CGSize(width: myViewWidth, height: scaledHeight)
		}
		return CGSize(width: -1.0, height: -1.0)
	}
}
