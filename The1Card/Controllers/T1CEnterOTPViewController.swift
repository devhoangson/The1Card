//
//  T1CEnterOTPViewController.swift
//  The1Card
//
//  Created by HOANGSON on 8/21/17.
//  Copyright © 2017 Aleph-Labs. All rights reserved.
//

import UIKit

class T1CEnterOTPViewController: T1CBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func nextAction(sender: AnyObject) {
        let createPinCodeViewController = T1CCreatePinCodeViewController(nibName: String(describing: T1CCreatePinCodeViewController.self), bundle: nil)
        self.navigationController?.pushViewController(createPinCodeViewController, animated: true)
    }
}
