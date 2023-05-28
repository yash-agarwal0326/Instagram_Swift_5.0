//
//  UIView.swift
//  Instagram
//
//  Created by Yash Agarwal on 30/04/23.
//

import Foundation
import UIKit

extension UIView {
	
	/**
	 Set view corner radius and border color
	 
	 - Parameter radius: Corner radius
	 - Parameter borderColor: Border color
	 - Parameter borderWidth: Border width
	 */
	func setCorderRadiusPlusBorderColor(withRadius radius: CGFloat,withBorderColor borderColor: UIColor, withBorderWidth borderWidth: CGFloat) {
		
		self.layer.cornerRadius = radius
		self.clipsToBounds = true
		
		self.layer.borderWidth = borderWidth
		self.layer.borderColor = borderColor.cgColor
	}
	
	/**
	 Set view corner radius
	 
	 - Parameter radius: Corner radius
	 */
	func setCorerRadius(withRadius radius: CGFloat) {
		self.layer.cornerRadius = radius
	}
}
