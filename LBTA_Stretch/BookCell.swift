//
//  BookCell.swift
//  LBTA_Stretch
//
//  Created by Zachary Hagman on 1/11/19.
//  Copyright © 2019 Spork and Toast, LLC. All rights reserved.
//

import UIKit

class BookCell: BaseCell {
	override init(frame: CGRect) {
		super.init(frame: frame)
		setupViews()
	}

	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

	override func setupViews() {
		super.setupViews()
		backgroundColor = UIColor.lightGray
		layer.borderColor = UIColor.green.cgColor
		layer.borderWidth = 3
		clipsToBounds = true
		layer.cornerRadius = self.frame.width / 8
	}
}
