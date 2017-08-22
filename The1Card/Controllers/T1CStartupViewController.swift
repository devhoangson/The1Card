//
//  T1CStartupViewController.swift
//  The1Card
//
//  Created by HOANGSON on 8/21/17.
//  Copyright © 2017 Aleph-Labs. All rights reserved.
//

import UIKit

class T1CStartupViewController: T1CBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.navigationController?.navigationBar.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func createNewAccountMemberAction(sender: AnyObject){
        let registerAccountViewController = T1CRegisterAccountViewController(nibName: String(describing: T1CRegisterAccountViewController.self), bundle: nil)
        self.navigationController?.pushViewController(registerAccountViewController, animated: true)
    }

    @IBAction func loginAccountAction(sender: AnyObject){
        let loginViewController = T1CLoginViewController(nibName: String(describing: T1CLoginViewController.self), bundle: nil)
        self.navigationController?.pushViewController(loginViewController, animated: true)
    }
}
