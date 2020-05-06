//
//  Utility.swift
//  ProjectSetup
//
//  Created by VISHAL on 06/05/20.
//  Copyright © 2020 VISHAL. All rights reserved.
//

import UIKit
import Alamofire
@objc protocol  UtilityDelegate {
    @objc optional func apiCallCompleted(_ success: Bool, result: [String: Any]?, error: String, apiType: APIType)
}
class Utility {
    var window: UIWindow?
    var delegate: UtilityDelegate?
    
    // Get Method
    func getData(url:String, apiType: APIType) {
        if checkInternet(){
            Alamofire.request(url, method: .get).responseJSON { (response) in
                switch response.result {
                case .success:
                    self.delegate?.apiCallCompleted?(true, result: [:], error: String(), apiType: apiType)
                    break
                case .failure(let error):
                    self.delegate?.apiCallCompleted?(false, result: [:], error: error.localizedDescription , apiType: apiType)
                }
            }
        }
        else{
            let alert = UIAlertView()
            alert.title = "Connection Error!"
            alert.message = "Please check internet connection and retry."
            alert.addButton(withTitle: "OK")
            alert.show()
        }
    }
    
    func postData(url:String, apiType: APIType) {
        if checkInternet(){
            
        }
        else{
            let alert = UIAlertView()
            alert.title = "Connection Error!"
            alert.message = "Please check internet connection and retry."
            alert.addButton(withTitle: "OK")
            alert.show()
        }
    }
}
