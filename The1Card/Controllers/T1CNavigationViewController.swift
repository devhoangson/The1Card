//
//  T1CNavigationViewController.swift
//  The1Card
//
//  Created by HOANGSON on 8/21/17.
//  Copyright © 2017 Aleph-Labs. All rights reserved.
//

import UIKit

class T1CNavigationViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true);
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK:
    //MARK: - Private Methods
    
    private func setUpUI(){
        //Hide navigation bar in StartUpViewController
        let viewControllers = self.viewControllers;
        for viewController in viewControllers {
            if viewController.isKind(of: T1CStartupViewController.self) {
                viewController.navigationController?.navigationBar.isHidden = true
            }
        }
    }
}
