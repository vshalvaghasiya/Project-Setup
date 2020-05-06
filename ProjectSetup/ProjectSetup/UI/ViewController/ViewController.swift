//
//  ViewController.swift
//  ProjectSetup
//
//  Created by VISHAL on 06/05/20.
//  Copyright © 2020 VISHAL. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let vc = StoryboardScene.Main.secondVC.instantiate()
        vc.headerString = "Second"
        self.navigationController?.pushViewController(vc, animated: true)
    }


}

