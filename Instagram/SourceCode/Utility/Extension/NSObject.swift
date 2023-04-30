//
//  NSObject.swift
//  Instagram
//
//  Created by Yash Agarwal on 30/04/23.
//

import Foundation

extension NSObject {
	
	///Return object name in form of string
	class var typeName:String {
		return String(describing: self)
	}
}
