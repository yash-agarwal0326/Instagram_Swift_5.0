//
//  SplashViewController.swift
//  Instagram
//
//  Created by Yash Agarwal on 30/03/23.
//

import UIKit
import Foundation

class SplashViewController: UIViewController {

	// MARK: - Override Methods
	
    override func viewDidLoad() {
        super.viewDidLoad()
		
		Thread.sleep(until: .now + 1.0)
		navigateToLoginScreen()
    }
}

// MARK: - Fileprivate Methods

extension SplashViewController {
	
	///Navigate to login screen
	fileprivate func navigateToLoginScreen() {
		let loginScreen = LoginViewController.instantiateFromStoryboard()
		navigationController?.pushViewController(loginScreen, animated: true)
	}
}
