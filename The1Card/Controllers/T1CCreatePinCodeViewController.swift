//
//  T1CCreatePinCodeViewController.swift
//  The1Card
//
//  Created by HOANGSON on 8/21/17.
//  Copyright © 2017 Aleph-Labs. All rights reserved.
//

import UIKit

class T1CCreatePinCodeViewController: T1CBaseViewController, UITextFieldDelegate {

    @IBOutlet var textField: T1CTextField?
    var keyboardView: T1CKeyboardView?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func setupUI() {
        super.setupUI()
        self.keyboardView = Bundle.main.loadNibNamed("T1CKeyboardView",
                                                   owner: nil,
                                                   options: nil)?.first as? T1CKeyboardView
        self.textField?.inputView = self.keyboardView
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
