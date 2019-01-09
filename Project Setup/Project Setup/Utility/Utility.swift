//
//  Utility.swift
//  Project Setup
//
//  Created by Admin on 08/01/19.
//  Copyright © 2019 VISHAL. All rights reserved.
//

import UIKit
import Foundation
import SVProgressHUD
import Reachability
import Alamofire
@objc protocol  UtilityDelegate {
    @objc optional func apiCallCompleted(_ success: Bool, result: NSDictionary?, error: String, apiType: APIType)
}
class Utility {
    var window: UIWindow?
    var delegate: UtilityDelegate?
    
    class func showAlert(_ title: String?, message: String?, viewController: UIViewController) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: { (action: UIAlertAction) in
        }))
        viewController.present(alertController, animated: true, completion: nil)
    }
    
    class func showProgress(_ message: String) {
        SVProgressHUD.setDefaultMaskType(SVProgressHUDMaskType.black)
        if(message == "") {
            SVProgressHUD.show()
        }
        else {
            SVProgressHUD.show(withStatus: message)
        }
    }
    
    class func dismissProgress() {
        SVProgressHUD.dismiss()
    }
    
    class func checkInternet() -> Bool {
//        let reachability = Reachability()!
//        let networkReachability: Reachability = Reachability.forInternetConnection();
//        let networkStatus : NetworkStatus = networkReachability.currentReachabilityStatus();
//        if (networkStatus.rawValue == 0) {
//            return false;
//        } else {
//            return true;
//        }
        let connection = Reachability()?.connection.description
        if connection == "Cellular" {
            return true;
        } else if connection == "WiFi" {
            return true;
        } else {
            return false;
        }
    }
}
