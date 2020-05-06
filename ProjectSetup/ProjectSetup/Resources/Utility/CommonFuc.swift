//
//  CommonFuc.swift
//  ProjectSetup
//
//  Created by VISHAL on 06/05/20.
//  Copyright © 2020 VISHAL. All rights reserved.
//

import Foundation
import UIKit
import Reachability

func checkInternet() -> Bool {
    let networkReachability: Reachability = Reachability.forInternetConnection();
    let networkStatus : NetworkStatus = networkReachability.currentReachabilityStatus();
    if (networkStatus.rawValue == 0) {
        return false;
    } else {
        return true;
    }
}

func IsRandom(number:Int) -> Bool{
    let val = Int.random(in: 1..<1000)
    if val % number == 0 {
        return true
    }
    return false
}

func timeStringFrom(totalSeconds: Int) -> String {
    let seconds: Int = totalSeconds % 60
    let minutes: Int = (totalSeconds / 60) % 60
    let hours: Int = totalSeconds / 3600
    if hours == 0{
        return String(format: "%.2d:%.2d", minutes,seconds)
    }
    return String(format: "%.2d:%.2d:%.2d", hours,minutes,seconds)
}

func getHeaderString(str1:String, str2:String) -> NSMutableAttributedString {
    let navLabel = UILabel()
    let navTitle = NSMutableAttributedString(string: str1, attributes:[
        NSAttributedString.Key.foregroundColor: UIColor.white,
        NSAttributedString.Key.font: UIFont(name: "Roboto-Bold", size: 22)!])
    
    navTitle.append(NSMutableAttributedString(string: " " + str2, attributes:[
        NSAttributedString.Key.font: UIFont(name: "Roboto-Medium", size: 22)!,
        NSAttributedString.Key.foregroundColor: UIColor.white]))
    
    navLabel.attributedText = navTitle
    return navTitle
}
