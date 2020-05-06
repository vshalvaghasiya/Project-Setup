//
//  Helper+UIViewController.swift
//  ProjectSetup
//
//  Created by VISHAL on 06/05/20.
//  Copyright © 2020 VISHAL. All rights reserved.
//

import Foundation
import UIKit
import GoogleMobileAds
extension UIViewController {
    func showAlert(_ title: String?, _ message: String?) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: { (action: UIAlertAction) in
        }))
        DispatchQueue.main.async {
            self.present(alertController, animated: true, completion: nil)
        }
    }
    
    func showAlertAction(title:String, message:String,_ completion:@escaping ()->()) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Yes", style: .destructive, handler: { (action) in
            completion()
        }))
        alert.addAction(UIAlertAction(title: "No", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    func alertPromptToAllowCameraAccessViaSettings() {
        let alert = UIAlertController(title: "\(appName)  Would Like To Access the Camera", message: "Please grant permission to use the Camera so that you can customer benefit.", preferredStyle: .alert )
        alert.addAction(UIAlertAction(title: "Open Settings", style: .cancel) { alert in
            if let appSettingsURL = NSURL(string: UIApplication.openSettingsURLString) {
                UIApplication.shared.open(appSettingsURL as URL, options: [:], completionHandler: nil)
            }
        })
        self.present(alert, animated: true, completion: nil)
    }
    
    func openURL(urlString:String){
        if let url = URL(string: urlString) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    
    //MARK: Ads Function
    func createAndLoadInterstitial() -> GADInterstitial {
        let interstitial = GADInterstitial(adUnitID: interstitial_Ads)
        interstitial.load(GADRequest())
        return interstitial
    }
    
    func showInterstitialAd(ad: GADInterstitial){
        if ad.isReady {
            ad.present(fromRootViewController: self)
        }
    }
}
