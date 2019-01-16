//
//  LibraryCollectionViewController.swift
//  LBTA_Stretch
//
//  Created by Zachary Hagman on 1/11/19.
//  Copyright © 2019 Spork and Toast, LLC. All rights reserved.
//

import UIKit

class CollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

	fileprivate let arrayOfAuthors = ["duhigg", "danPink", "tigerbuddha", "cuteHedgehog"]

	func generateFNArray(numED: Int) -> [String] {
		var array: [String] = []
		for book in 0...numED {
			array.append("FNC-" + String(book))
		}
		return array
	}

	fileprivate let cellID: String = "cellID"
	fileprivate let headerID: String = "headerID"

	fileprivate let padding: CGFloat = 16

	override func viewDidLoad() {
		super.viewDidLoad()
		setupCollectionViewLayout()
		setupCollectionView()
//		setupNavBar()
	}

	fileprivate func setupCollectionViewLayout() {
		if let layout = collectionViewLayout as? UICollectionViewFlowLayout {
			layout.sectionInset = .init(top: padding, left: padding, bottom: padding, right: padding)
		}
	}

	override var preferredStatusBarStyle: UIStatusBarStyle {
		return .lightContent
	}

	fileprivate func setupCollectionView() {
		view.backgroundColor = UIColor.white
		collectionView.contentInsetAdjustmentBehavior = .never
		collectionView.register(BookCell.self, forCellWithReuseIdentifier: cellID)
		collectionView.register(HeaderView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: headerID)
		collectionView.backgroundColor = UIColor(hex: 0xF7F8F9)
	}

	private func setupNavBar() {
		navigationController?.navigationBar.prefersLargeTitles = true
		navigationItem.largeTitleDisplayMode = .automatic
		navigationItem.title = "My Library"

		let searchController = UISearchController(searchResultsController: nil)
		navigationItem.searchController = searchController
		navigationItem.hidesSearchBarWhenScrolling = false
	}

	override func scrollViewDidScroll(_ scrollView: UIScrollView) {
		let contentOffsetY = scrollView.contentOffset.y

		if contentOffsetY > 0 {
			headerView?.animator.fractionComplete = 0
			return
		}

		headerView?.animator.fractionComplete = abs(contentOffsetY) / 100
	}

	var headerView: HeaderView?

	override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
		headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerID, for: indexPath) as? HeaderView
		return headerView!
	}

	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
		return CGSize(width: view.frame.width, height: 340)
	}

	override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//		return arrayOfAuthors.count
		return generateFNArray(numED: 35).count
	}

	override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

		let fnArray = generateFNArray(numED: 35)
		let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath) as! BookCell
//		cell.bookImage.image = UIImage(named: arrayOfAuthors[indexPath.row])
		cell.bookImage.image = UIImage(named: fnArray[indexPath.row])
		cell.bookMainTitle.text = fnArray[indexPath.row]
		cell.bookLocation.text = "Unavailable"
		return cell
	}

	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
		return CGSize(width: (view.frame.width - padding * 2), height: (view.frame.height) / 2.85)
	}

//	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
//		return UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
//	}


	
}
