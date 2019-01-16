//
//  BookCell.swift
//  LBTA_Stretch
//
//  Created by Zachary Hagman on 1/11/19.
//  Copyright © 2019 Spork and Toast, LLC. All rights reserved.
//

import UIKit

class BookCell: BaseCell {

	let bookImage: SPXImageView = {
		let imgView = SPXImageView()
		imgView.applyRoundedCorners()
		imgView.backgroundColor = UIColor.cyan
		imgView.image = UIImage(named: "danPink")
		imgView.contentMode = .scaleAspectFill
		return imgView
	}()

	let bookInfoStack: SPXStackView = {
		let stack = SPXStackView(axisLayout: .vertical)
		return stack
	}()

	let bookMainTitle: SPXLabel = {
		let lbl = SPXLabel(title: "Title of Book:", color: .clear
			, colorOfLabelText: .black)
		lbl.font = UIFont(name: Fonts.avenirNextMediumItalic, size: 15)
		return lbl
	}()

	let bookSubtitle: SPXLabel = {
		let lbl = SPXLabel(title: "The Secondary Subtitle that Often Overshadows the First Title.", color: .clear
			, colorOfLabelText: .black)
		lbl.font = UIFont(name: Fonts.avenirNextMediumItalic, size: 15)
		return lbl
	}()

	let bookAuthor: SPXLabel = {
		let lbl = SPXLabel(title: "Daniel Pink", color: .clear, colorOfLabelText: .black)
		lbl.font = UIFont(name: Fonts.avenirNextMedium, size: 13)
		return lbl
	}()

	let bookLocation: SPXLabel = {
		let lbl = SPXLabel(title: "A5-2-29", color: .clear, colorOfLabelText: .lightGray)
		lbl.font = UIFont(name: Fonts.avenirNextMediumItalic, size: 13)
		return lbl
	}()

	let bookStatus: SPXButton = {
		let btn = SPXButton(title: "Available", color: UIColor(hex: 0x07BEB8))
		btn.titleLabel?.font = UIFont(name: Fonts.avenirNextMediumItalic, size: 13)
		btn.layer.borderColor = UIColor.clear.cgColor
		return btn
	}()

	let bookDetails: SPXButton = {
		let btn = SPXButton(title: "Details", color: UIColor(hex: 0x4B4E6D))
		btn.titleLabel?.font = UIFont(name: Fonts.avenirNextMediumItalic, size: 13)
		btn.layer.borderColor = UIColor.clear.cgColor
		return btn
	}()

	let spacer: SPXView = {
		let spacer = SPXView()
		spacer.backgroundColor = UIColor.clear
		return spacer
	}()

	override init(frame: CGRect) {
		super.init(frame: frame)
		setupViews()
	}

	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

	override func setupViews() {
		super.setupViews()
		addSubview(bookImage)

		addSubview(bookInfoStack)

		let arrayOfBookInfo = [bookMainTitle, bookSubtitle, bookAuthor, bookStatus, bookDetails, spacer]

		arrayOfBookInfo.forEach {
			bookInfoStack.addArrangedSubview($0)
		}
		bookImage.anchor(top: self.topAnchor, leading: self.leadingAnchor, bottom: self.bottomAnchor, trailing: self.leadingAnchor, padding: .init(top: 5, left: 0, bottom: 5, right: -200))

		bookInfoStack.anchor(top: self.topAnchor, leading: bookImage.trailingAnchor, bottom: self.bottomAnchor, trailing: self.trailingAnchor, padding: .init(top: 5, left: 5, bottom: 5, right: 5))

	}

	
}
