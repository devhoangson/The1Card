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
        self.setupUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    //MARK:
    //MARK: - Public Methods
    
    public func showNavigationBar(show: Bool) {
        if !self.isKind(of: T1CStartupViewController.self) {
            self.navigationController?.navigationBar.isHidden = !show
        }
    }
    
    public func setupUI() {
        self.navigationItem.setHidesBackButton(true, animated: false)
        self.createBackButton()
    }
    
    public func createBackButton() {
        let view = UIView.init(frame: CGRect.zero)
        view.frame = CGRect(x: 0, y: 0, width: 40, height: 44)
        let backButton = UIButton.init(type: UIButtonType.custom)
        backButton.frame = view.bounds
        backButton.setImage(UIImage.init(named: "back.png"), for: UIControlState.normal)
        backButton.imageEdgeInsets = UIEdgeInsetsMake(12, 0, 12, 25)
        backButton.addTarget(self, action: #selector(backAction), for: UIControlEvents.touchUpInside)
        view.addSubview(backButton)
        let barButton = UIBarButtonItem.init(customView: view)
        self.navigationItem.leftBarButtonItem = barButton
    }
    
    public func backAction() {
        self.navigationController?.popViewController(animated: true)
    }
}
