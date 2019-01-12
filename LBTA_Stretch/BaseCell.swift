//
//  BaseCell.swift
//  LBTA_Stretch
//
//  Created by Zachary Hagman on 1/11/19.
//  Copyright © 2019 Spork and Toast, LLC. All rights reserved.
//

import UIKit

class BaseCell: UICollectionViewCell {
	override init(frame: CGRect) {
		super.init(frame: frame)
		setupViews()
	}

	func setupViews() {
		backgroundColor = UIColor.clear
		layer.borderColor = UIColor.green.cgColor
		layer.borderWidth = 3
		clipsToBounds = true
		layer.cornerRadius = self.frame.width / 8

	}

	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}


}
