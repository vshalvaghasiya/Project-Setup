//
//  AppData.swift
//  ProjectSetup
//
//  Created by VISHAL on 06/05/20.
//  Copyright © 2020 VISHAL. All rights reserved.
//

import Foundation
import UIKit
class AppData {
    var storyboard : UIStoryboard!;
    var appDelegate: AppDelegate!;
    
    static let sharedInstance: AppData = {
        let instance = AppData()
        return instance
    }()
}
