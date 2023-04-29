//
//  LoginViewController.swift
//  Instagram
//
//  Created by Yash Agarwal on 29/04/23.
//

import UIKit

class LoginViewController: UIViewController {
	
	// MARK: - Outlets
	
	@IBOutlet weak var instagramLabel: UILabel!
	
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
		instagramLabel.font = UIFont(name: Constant.Fonts.InstagramSansBold, size: 30.0)
	}
}

// MARK: - Static Methods

extension LoginViewController {
	
	/**
	 Instantiate LoginViewController from Main storyboard
	 
	 - Returns: LoginViewController
	 */
	static func instantiateFromStoryboard() -> LoginViewController {
		return Storyboard.Main.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
	}
}
