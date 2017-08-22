//
//  T1CVerifyPhoneNumberViewController.swift
//  The1Card
//
//  Created by HOANGSON on 8/21/17.
//  Copyright © 2017 Aleph-Labs. All rights reserved.
//

import UIKit

class T1CVerifyPhoneNumberViewController: T1CBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func correctNumberAction(sender: AnyObject) {
        let enterOTPViewController = T1CEnterOTPViewController(nibName: String(describing: T1CEnterOTPViewController.self), bundle: nil)
        self.navigationController?.pushViewController(enterOTPViewController, animated: true)
    }
    
    @IBAction func incorrectNumberAction(sender: AnyObject) {
        
    }

}
