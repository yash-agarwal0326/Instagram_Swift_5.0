//
//  Validator.swift
//  Instagram
//
//  Created by Yash Agarwal on 02/05/23.
//

import Foundation
import UIKit

class Validator {
	
	static func isTextLengthValid(in textField:UITextField,_ range:NSRange,_ string:String,maxLength: Int) -> Bool {
		
		let currentString: NSString = textField.text! as NSString
		let newString: NSString = currentString.replacingCharacters(in: range, with: string) as NSString
		return newString.length <= maxLength
	}

	static func isTextFieldEmpty (_ textfield: UITextField) -> Bool {
		guard let trimmedText = textfield.text?.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines) else {return false}
		textfield.text = trimmedText
		return (trimmedText.isEmpty)
	}
	
	static func isTextViewEmpty (_ textView: UITextView) -> Bool {
		guard let trimmedText = textView.text?.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines) else {return false}
		textView.text = trimmedText
		return (trimmedText.isEmpty)
	}
	
	static func isValidEmail (_ email: String?) -> Bool {
		guard let email = email?.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines) else {return false}
		let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9-]+\\.[A-Za-z]{2,4}"
		let miskEmailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9-]+\\.[A-Za-z]{2,4}+\\.[A-Za-z]{2,4}"
		let emailTest = NSPredicate.init(format: "SELF MATCHES %@", emailRegex)
		let miskEmailTest = NSPredicate.init(format: "SELF MATCHES %@", miskEmailRegex)
		
		return (emailTest.evaluate(with: email) || miskEmailTest.evaluate(with: email))
	}
	
	static func isAlphaNumericPassword (_ password: String) -> Bool {
		let passwordRegex = "^(?!.*(.)\\1{3})((?=.*[\\d])(?=.*[A-Za-z])|(?=.*[^\\w\\d\\s])(?=.*[A-Za-z])).{6,20}$"
		let passwordTest = NSPredicate.init(format: "SELF MATCHES %@", passwordRegex)
		return passwordTest.evaluate(with: password)
	}
	
	static func isOnlyHaveAlphabates(_ string:String?) -> Bool {
		if string != nil {
			let regex = "^[a-zA-Z ]*$"
			let test = NSPredicate.init(format: "SELF MATCHES %@", regex)
			return test.evaluate(with: string)
		}
		return false
	}
	
	static func isNumericCharacter(_ string: String) -> Bool {
		let characterSet = NSCharacterSet(charactersIn: "0123456789")
		let inputCharacter = NSCharacterSet(charactersIn: string)
		return characterSet.isSuperset(of: inputCharacter as CharacterSet)
	}
	
	static func isValidPassword (_ password: String?) -> Bool{
		guard let password = password?.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines) else {return false}
		return password.count >= 8 ? true : false
	}
	
	static func isFirstCharacterSpace(for textField: UITextField,replacement text: String) -> Bool{
		
		var shouldChange = false
		
		var inputCharacter:String = ""
		if textField.text != nil{
			inputCharacter += textField.text!
		}
		inputCharacter += text
		
		if inputCharacter == ""{
			shouldChange = true
		}else if inputCharacter[inputCharacter.startIndex] == " "{
			return true
		}
		
		return shouldChange
	}
}
