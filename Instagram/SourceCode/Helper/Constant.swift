//
//  Constant.swift
//  Instagram
//
//  Created by Yash Agarwal on 29/04/23.
//

import Foundation
import UIKit

struct Constant {
	
	struct Fonts {
		static let InstagramSansBold 			= "InstagramSans-Bold"
		static let InstagramSansLight 		= "InstagramSans-Light"
		static let InstagramSansMedium 		= "InstagramSans-Medium"
		static let InstagramSansRegular 		= "InstagramSans-Regular"
		static let InstagramSansCondensedBold 	= "InstagramSansCondensed-Bold"
		static let InstagramSansCondensedRegular = "InstagramSansCondensed-Regular"
		static let InstagramSansHeadlineRegular 	= "InstagramSansHeadline-Regular"
		static let InstagramSansScriptBold 		= "InstagramSansScript-Bold"
		static let InstagramSansScriptRegular 	= "InstagramSansScript-Regular"
	}
	
	struct Message {
		static let pleaseEnterUsernameEmailNumber = "Please enter username, email or phone number"
		static let pleaseEnterPassword = "Please enter password"
		static let pleaseEnterValidPassword = "Please enter valid password"
	}
}

struct Storyboard {
	static let Main = UIStoryboard(name: "Main", bundle: nil)
	static let CoreTabs = UIStoryboard(name: "CoreTabs", bundle: nil)
}
