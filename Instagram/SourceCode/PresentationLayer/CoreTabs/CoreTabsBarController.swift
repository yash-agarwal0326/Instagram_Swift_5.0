//
//  CoreTabsBarController.swift
//  Instagram
//
//  Created by Yash Agarwal on 28/05/23.
//

import UIKit

class CoreTabsBarController: UITabBarController {

	// MARK: - Override Methods
	
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

// MARK: - Static Methods

extension CoreTabsBarController {
	
	/**
	 Instantiate CoreTabsBarController from CoreTabs storyboard
	 
	 - Returns: CoreTabsBarController
	 */
	static func instantiateFromStoryboard() -> CoreTabsBarController {
		return Storyboard.CoreTabs.instantiateViewController(withIdentifier: CoreTabsBarController.typeName) as! CoreTabsBarController
	}
}
