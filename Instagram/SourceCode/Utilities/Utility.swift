//
//  Utility.swift
//  Instagram
//
//  Created by Yash Agarwal on 28/05/23.
//

import Foundation
import UIKit

class Utility {
	
	static func getRootViewController() -> UINavigationController? {
			let navigationController = UIApplication.shared.windows.first!.rootViewController as! UINavigationController
			return navigationController
	}
	
	static func showMessage (_ message: String?) {
		Utility.showAlertController( nil, title: nil, message: message, buttonNames: ["OK"], alertType: .alert) { (index) in
		}
	}
	
	static func showAlert (_ viewController: UIViewController?, title: String?, message: String?, buttonNames:[String], completion:@escaping((Int)->Void)) {
		let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
		
		for index in 0..<buttonNames.count {
			let name = buttonNames[index]
			let action = UIAlertAction(title: name, style: .default, handler: { (UIAlertAction) in
				completion(index)
				alert.dismiss(animated: true, completion: {
				})
			})
			action.setValue(UIColor(named: "skyColor")!, forKey: "titleTextColor")
			alert.addAction(action)
		}
		viewController!.present(alert, animated: true, completion: nil)
	}
	
	static func showAlertController (_ viewController: UIViewController?, title: String?, message: String?, buttonNames:[String], alertType:UIAlertController.Style, completion:@escaping((Int)->Void)) {
		
		let alert = UIAlertController(title: title, message: message, preferredStyle: alertType)
		
		for index in 0..<buttonNames.count{
			let name = buttonNames[index]
			var action = UIAlertAction()
			
			if name == "Cancel" && alertType == .actionSheet {
				action = UIAlertAction(title: name, style: .cancel, handler: { (UIAlertAction) in
					alert.dismiss(animated: true, completion: {
					})
				})
				action.setValue(UIColor.red, forKey: "titleTextColor")
			} else {
				action = UIAlertAction(title: name, style: .default, handler: { (UIAlertAction) in
					completion(index)
					alert.dismiss(animated: true, completion: {
					})
				})
				//action.setValue(#colorLiteral(red: 0.137254902, green: 0.1725490196, blue: 0.2392156863, alpha: 1), forKey: "titleTextColor")
			}
			
			alert.addAction(action)
		}
		
		if viewController == nil {
			Utility.getRootViewController()?.present(alert, animated: true, completion: nil)
			
		} else {
			viewController!.present(alert, animated: true, completion: nil)
		}
		
		//viewController.present(alert, animated: true, completion: nil)
		
		if buttonNames.count == 0 {
			DispatchQueue.main.asyncAfter(deadline: .now()+2) {
				alert.dismiss(animated: true, completion: {
				})
			}
		}
	}
	
	static func showToast(message: String, seconds: Double) {
		let alert = UIAlertController(title: nil, message: message, preferredStyle: .actionSheet)
		alert.view.backgroundColor = .black
		alert.view.alpha = 1.0
		alert.view.layer.cornerRadius = 15
		
		Utility.getRootViewController()?.present(alert, animated: true, completion: nil)
		
		DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + seconds) {
			alert.dismiss(animated: true, completion: nil)
		}
	}
}
