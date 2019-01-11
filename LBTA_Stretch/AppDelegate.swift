//
//  AppDelegate.swift
//  LBTA_Stretch
//
//  Created by Zachary Hagman on 1/11/19.
//  Copyright © 2019 Spork and Toast, LLC. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

	var window: UIWindow?

	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
		window = UIWindow()
		window?.makeKeyAndVisible()
		let layout = UICollectionViewFlowLayout()
		let stretchLayout = StretchyHeaderLayout()
		let library = CollectionViewController(collectionViewLayout: stretchLayout)
//		let homeScreen = UINavigationController(rootViewController: library)

		window?.rootViewController = library
		return true
	}
//
//	func applicationWillResignActive(_ application: UIApplication) {
//	}
//
//	func applicationDidEnterBackground(_ application: UIApplication) {
//	}
//
//	func applicationWillEnterForeground(_ application: UIApplication) {
//	}
//
//	func applicationDidBecomeActive(_ application: UIApplication) {
//	}
//
//	func applicationWillTerminate(_ application: UIApplication) {
//	}


}

