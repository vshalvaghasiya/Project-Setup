//
//  AppData.swift
//  Project Setup
//
//  Created by Admin on 08/01/19.
//  Copyright © 2019 VISHAL. All rights reserved.
//

import Foundation
import UIKit
class AppData {
    var storyboard : UIStoryboard!;
    var appDelegate: AppDelegate!;
    
    var UserID:String = String()
    static let sharedInstance: AppData = {
        let instance = AppData()
        // some additional setup
        return instance
    }()
}
