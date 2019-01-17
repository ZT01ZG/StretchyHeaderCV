//
//  HeaderView.swift
//  LBTA_Stretch
//
//  Created by Zachary Hagman on 1/11/19.
//  Copyright © 2019 Spork and Toast, LLC. All rights reserved.
//

import UIKit

class HeaderView: UICollectionReusableView {
	let libraryName: SPXLabel = {
		let lbl = SPXLabel(title: "My Library", color: .clear, colorOfLabelText: .white)
		lbl.font = UIFont(name: Fonts.avenirNextBold, size: 30)
		return lbl
	}()

	let btnStackView: SPXStackView = {
		let stack = SPXStackView(axisLayout: .horizontal)
		return stack
	}()

	let imageView: SPXImageView = {
		let imgView = SPXImageView()
		imgView.contentMode = .scaleAspectFill
		return imgView
	}()

	let addButton: UIButton = {
		let btn = UIButton()
		btn.translatesAutoresizingMaskIntoConstraints = false
//		btn.backgroundColor = UIColor.red
		btn.setImage(UIImage(named: "icon-add"), for: .normal)
		btn.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
		return btn
	}()

	let searchButton: UIButton = {
		let btn = UIButton()
		btn.setImage(UIImage(named: "icon-search"), for: .normal)
		btn.translatesAutoresizingMaskIntoConstraints = false
		return btn
	}()

	override init(frame: CGRect) {
		super.init(frame: frame)
		setupHeaderView()
		setupVisualEffectBlur()
	}

	private func setupHeaderView() {
		//MARK: - addSubviews
		addSubview(imageView)
		backgroundColor = UIColor(hex: 0xF6F7F8)
		imageView.image = UIImage(named: "cuteHedgehog")?.resize(size: CGSize(width: self.frame.width, height: self.frame.height))

		addSubview(libraryName)
		addSubview(btnStackView)
		btnStackView.addArrangedSubview(searchButton)
		btnStackView.addArrangedSubview(addButton)

		//MARK: = HeaderView - Anchors/Layout Constraints
		imageView.fillSuperview()
		libraryName.anchor(top: nil, leading: self.leadingAnchor, bottom: self.bottomAnchor, trailing: nil, padding: .init(top: 0, left: 15, bottom: 15, right: 0))
		btnStackView.anchor(top: nil, leading: self.trailingAnchor, bottom: self.bottomAnchor, trailing: self.trailingAnchor, padding: .init(top: 15, left: -100, bottom: 15, right: 15), size: CGSize(width: btnStackView.frame.width, height: 35))

		//MARK: = Button Targets
		addButton.addTarget(self, action: #selector(self.addABookButtonPressed(_:)), for: .touchUpInside)
		searchButton.addTarget(self, action: #selector(self.searchButtonPressed(_:)), for: .touchUpInside)
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

	@objc func addABookButtonPressed(_ sender: UIButton) {
		print("AddABookButtonPressed")
		//TODO: - Build Add Book Workflow
	}

	@objc func searchButtonPressed(_ sender: UIButton) {
		print("SearchButtonPressed")
		//TODO: - build Search Workflow
	}

	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
}
