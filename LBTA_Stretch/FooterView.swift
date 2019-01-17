//
//  FooterView.swift
//  LBTA_Stretch
//
//  Created by Zachary Hagman on 1/17/19.
//  Copyright © 2019 Spork and Toast, LLC. All rights reserved.
//

import UIKit

class FooterView: UICollectionReusableView {
	override init(frame: CGRect) {
		super.init(frame: frame)
		setupFooterView()
	}

	private func setupFooterView() {
		backgroundColor = Primaries.PatriotRed
	}

	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
}
