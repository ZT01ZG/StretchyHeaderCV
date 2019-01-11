//
//  HeaderView.swift
//  LBTA_Stretch
//
//  Created by Zachary Hagman on 1/11/19.
//  Copyright © 2019 Spork and Toast, LLC. All rights reserved.
//

import UIKit

class HeaderView: UICollectionReusableView {
	let mainTitle: SPXLabel = {
		let lbl = SPXLabel(title: "My Library", color: .clear, colorOfLabelText: .white)
		lbl.font = UIFont(name: Fonts.avenirNextBold, size: 30)
		return lbl
	}()

	let imageView: SPXImageView = {
		let imgView = SPXImageView()
		imgView.contentMode = .scaleAspectFill
		return imgView
	}()


	override init(frame: CGRect) {
		super.init(frame: frame)

		setupHeaderView()
		setupVisualEffectBlur()
	}

	private func setupHeaderView() {
		backgroundColor = UIColor(hex: 0xF6F7F8)
		imageView.image = UIImage(named: "cuteHedgehog")?.resize(size: CGSize(width: self.frame.width, height: self.frame.height))
		addSubview(imageView)
		imageView.fillSuperview()

		addSubview(mainTitle)
		mainTitle.anchor(top: nil, leading: self.leadingAnchor, bottom: self.bottomAnchor, trailing: nil, padding: .init(top: 0, left: 15, bottom: 15, right: 0))
	}

	var animator: UIViewPropertyAnimator!

	fileprivate func setupVisualEffectBlur() {
		animator = UIViewPropertyAnimator(duration: 3.0, curve: .linear, animations: { [weak self] in
			let blurEffect = UIBlurEffect(style: .regular)
			let visualEffectView = UIVisualEffectView(effect: blurEffect)

			self?.addSubview(visualEffectView)
			visualEffectView.fillSuperview()
		})

	}


	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
}
