//
//  NavigationController.swift
//  Instagram
//
//  Created by Yash Agarwal on 30/04/23.
//

import Foundation
import UIKit

class NavigationController {
	
	//Shared instance
	static let sharedInstance = NavigationController()
	
	//Making initializer private so we can have only one instance object
	private init(){}
	
	/**
	 Hide navigation bar
	 - Parameter navigationController: UINavigationController
	 */
	func hideNavigationBar(for navigationController: UINavigationController?) {
		navigationController?.navigationBar.isHidden = true
	}
	
	/**
	 Show navigation bar
	 - Parameter navigationController: UINavigationController
	 */
	func showNavigationBar(for navigationController: UINavigationController?) {
		navigationController?.navigationBar.isHidden = false
	}
}
