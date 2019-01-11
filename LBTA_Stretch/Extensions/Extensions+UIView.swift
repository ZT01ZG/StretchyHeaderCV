//
//  Extensions+UIView.swift
//  ThyngsTwo
//
//  Created by Zachary Hagman on 12/15/18.
//  Copyright © 2018 Spork and Toast, LLC. All rights reserved.
//

import UIKit

extension UIView {

	func fillSuperview() {
		anchor(top: superview?.topAnchor, leading: superview?.leadingAnchor, bottom: superview?.bottomAnchor, trailing: superview?.trailingAnchor)
	}

	func anchorSize(to view: UIView) {
		widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
		heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
	}

	func anchor(top: NSLayoutYAxisAnchor?, leading: NSLayoutXAxisAnchor?, bottom: NSLayoutYAxisAnchor?, trailing: NSLayoutXAxisAnchor?, padding: UIEdgeInsets = .zero, size: CGSize = .zero) {
		translatesAutoresizingMaskIntoConstraints = false

		if let top = top {
			topAnchor.constraint(equalTo: top, constant: padding.top).isActive = true
		}

		if let leading = leading {
			leadingAnchor.constraint(equalTo: leading, constant: padding.left).isActive = true
		}

		if let bottom = bottom {
			bottomAnchor.constraint(equalTo: bottom, constant: -padding.bottom).isActive = true
		}

		if let trailing = trailing {
			trailingAnchor.constraint(equalTo: trailing, constant: -padding.right).isActive = true
		}

		if size.width != 0 {
			widthAnchor.constraint(equalToConstant: size.width).isActive = true
		}

		if size.height != 0 {
			heightAnchor.constraint(equalToConstant: size.height).isActive = true
		}
	}

	func centerInSuperview() {
		translatesAutoresizingMaskIntoConstraints = false
		centerHorizontallyInSuperview()
		centerVerticallyInSuperview()
	}

	func centerHorizontallyInSuperview(){
		let c: NSLayoutConstraint = NSLayoutConstraint(item: self, attribute: .centerX, relatedBy: .equal, toItem: self.superview, attribute: .centerX, multiplier: 1, constant: 0)
		self.superview?.addConstraint(c)
	}

	func centerVerticallyInSuperview(){
		let c: NSLayoutConstraint = NSLayoutConstraint(item: self, attribute: .centerY, relatedBy: .equal, toItem: self.superview, attribute: .centerY, multiplier: 1, constant: 0)
		self.superview?.addConstraint(c)
	}
}

