//
//  Constant.swift
//  ProjectSetup
//
//  Created by VISHAL on 06/05/20.
//  Copyright © 2020 VISHAL. All rights reserved.
//

import Foundation
import UIKit

//App Info
let appName                             = ""
let appID                               = ""

// Developer Account Info
let rateLink                            = "https://itunes.apple.com/app/id\(appID)?mt=8&action=write-review"
let appURL                              = "https://itunes.apple.com/app/id\(appID)?mt=8"
let moreAppURL                          = ""
let privacyPolicy                       = ""
let email                               = ""

// AdId Info
let app_Id                              = ""
let interstitial_Ads                    = "ca-app-pub-3940256099942544/4411468910"
let banner_Ads                          = "ca-app-pub-3940256099942544/2934735716"
let native_Ads                          = "ca-app-pub-3940256099942544/3986624511"

// Global Default Variable
let userDefault                         = UserDefaults.standard
let appDelegate: AppDelegate            = (UIApplication.shared.delegate as! AppDelegate)
let window                              = UIApplication.shared.windows.first
