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
	@IBOutlet weak var phoneNumberUsernameEmailTextField: UITextField!
	@IBOutlet weak var passwordTextField: UITextField!
	@IBOutlet weak var loginButton: UIButton!
	
	// MARK: - Actions
	
	@IBAction func forgotButtonPressed(_ sender: UIButton) {
	}
	
	@IBAction func loginButtonPressed(_ sender: UIButton) {
		navigateToCoreTabs()
	}
	
	@IBAction func signUpButtonPressed(_ sender: UIButton) {
	}
	
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
		
		loginButton.setCorerRadius(withRadius: 5.0)
	}
	
	/**
	 Check wheather all fields are valid or not
	 
	 - Returns: Boolean value
	 */
	fileprivate func isAllFieldValid() -> Bool {
		var isValid:Bool = false
		
		if Validator.isTextFieldEmpty(phoneNumberUsernameEmailTextField) {
			Utility.showMessage(Constant.Message.pleaseEnterUsernameEmailNumber)
			
		} else if Validator.isTextFieldEmpty(passwordTextField) {
			Utility.showMessage(Constant.Message.pleaseEnterPassword)
			
		} else if !Validator.isValidPassword(passwordTextField.text) {
			Utility.showMessage(Constant.Message.pleaseEnterValidPassword)
			
		} else {
			isValid = true
		}
		
		return isValid
	}
	
	///Navigate to core tabs
	fileprivate func navigateToCoreTabs() {
		let coreTabsController = CoreTabsBarController.instantiateFromStoryboard()
		navigationController?.pushViewController(coreTabsController, animated: true)
	}
}

// MARK: - UITextFieldDelegate

extension LoginViewController: UITextFieldDelegate {
	
	func textFieldShouldReturn(_ textField: UITextField) -> Bool {
		switch textField {
		case phoneNumberUsernameEmailTextField:
			return passwordTextField.becomeFirstResponder()
		default:
			return textField.resignFirstResponder()
		}
	}
	
	func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
		return !Validator.isFirstCharacterSpace(for: textField, replacement: string)
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
