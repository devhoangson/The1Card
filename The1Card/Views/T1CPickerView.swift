//
//  T1CPickerView.swift
//  The1Card
//
//  Created by HOANGSON on 8/22/17.
//  Copyright © 2017 Aleph-Labs. All rights reserved.
//

import UIKit

class T1CPickerView: UIView, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet var pickerView: UIPickerView?
    var pickerDataSource = ["White", "Red", "Green", "Blue"];
    
    var doneHandleCallback: (() -> Void)?
    var didSelectedRowCallback: (String)->Void = {
        (arg: String) -> Void in
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.pickerView?.dataSource = self;
        self.pickerView?.delegate = self;
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return self.pickerDataSource.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return self.pickerDataSource[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.didSelectedRowCallback(self.pickerDataSource[row])
    }
    
    @IBAction func doneAction(sender: AnyObject) {
        if (self.doneHandleCallback != nil) {
            self.doneHandleCallback!()
            self.doneHandleCallback = nil
        }
    }
}
