//
//  LoginViewController.swift
//  Instagram
//
//  Created by Yash Agarwal on 29/04/23.
//

import UIKit

class LoginViewController: UIViewController {
	
	// MARK: - Outlets
	
	@IBOutlet weak var phoneNumberUsernameEmailView: UIView!
	@IBOutlet weak var passwordView: UIView!
	
	// MARK: - Override Methods
	
	override func viewDidLoad() {
		super.viewDidLoad()
		customUI()
	}
}

// MARK: - Fileprivate Methods

extension LoginViewController {
	
	///Custom UI for login screen
	fileprivate func customUI() {
		
		//Setting border for the container views
		phoneNumberUsernameEmailView.setCorderRadiusPlusBorderColor(withRadius: 5.0, withBorderColor: .systemGray4, withBorderWidth: 1.0)
		passwordView.setCorderRadiusPlusBorderColor(withRadius: 5.0, withBorderColor: .systemGray4, withBorderWidth: 1.0)
		
		//Hide navigation bar
		NavigationController.sharedInstance.hideNavigationBar(for: self.navigationController)
	}
}

// MARK: - Static Methods

extension LoginViewController {
	
	/**
	 Instantiate LoginViewController from Main storyboard
	 
	 - Returns: LoginViewController
	 */
	static func instantiateFromStoryboard() -> LoginViewController {
		return Storyboard.Main.instantiateViewController(withIdentifier: LoginViewController.typeName) as! LoginViewController
	}
}
