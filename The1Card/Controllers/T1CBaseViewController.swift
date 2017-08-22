//
//  T1CBaseViewController.swift
//  The1Card
//
//  Created by HOANGSON on 8/21/17.
//  Copyright © 2017 Aleph-Labs. All rights reserved.
//

import UIKit

class T1CBaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.showNavigationBar(show: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    //MARK:
    //MARK: - Public Methods
    
    func showNavigationBar(show: Bool){
        if !self.isKind(of: T1CStartupViewController.self) {
            self.navigationController?.navigationBar.isHidden = !show
        }
    }
}
