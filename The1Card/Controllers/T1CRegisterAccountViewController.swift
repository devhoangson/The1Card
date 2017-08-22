//
//  T1CRegisterAccountViewController.swift
//  The1Card
//
//  Created by HOANGSON on 8/21/17.
//  Copyright © 2017 Aleph-Labs. All rights reserved.
//

import UIKit

class T1CRegisterAccountViewController: T1CBaseViewController {
    
    @IBOutlet var thaiLanView: UIView?
    @IBOutlet var tourisView: UIView?
    @IBOutlet var thaiLanButton: UIButton?
    @IBOutlet var tourisButton: UIButton?
    @IBOutlet var nextButton: T1CButton?
    
    var pickerView: T1CPickerView?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func setupUI() {
        super.setupUI()
        self.tourisView?.isHidden = true
        self.pickerView = Bundle.main.loadNibNamed("T1CPickerView",
                                                   owner: nil,
                                                   options: nil)?.first as? T1CPickerView
    }
    
    @IBAction func switchAction(sender: AnyObject){
        let button: UIButton = sender as! UIButton
        button.backgroundColor = UIColor.black
        button.setTitleColor(UIColor.white, for: UIControlState.normal)
        if button == self.thaiLanButton {
            self.tourisButton?.backgroundColor = UIColor.clear
            self.tourisButton?.setTitleColor(UIColor.gray, for: UIControlState.normal)
            
            self.thaiLanView?.alpha = 0
            self.thaiLanView?.isHidden = false
            self.tourisView?.isHidden = true
            UIView.animate(withDuration: 0.3, animations: {
                self.thaiLanView?.alpha = 1
            })
        }else{
            self.thaiLanButton?.backgroundColor = UIColor.clear
            self.thaiLanButton?.setTitleColor(UIColor.gray, for: UIControlState.normal)
            
            self.tourisView?.alpha = 0
            self.tourisView?.isHidden = false
            self.thaiLanView?.isHidden = true
            UIView.animate(withDuration: 0.3, animations: {
                self.tourisView?.alpha = 1
            })
        }
    }
    
    @IBAction func showPickerView(sender: AnyObject) {
        if (self.pickerView != nil) {
            self.view.addSubview(self.pickerView!)
            
            pickerView?.doneHandleCallback = {
                var frame: CGRect = (self.pickerView?.frame)!
                frame.origin.y = T1CConstants.SCREEN_HEIGHT
                UIView.animate(withDuration: 0.3, animations: {
                    self.pickerView?.frame = frame
                }, completion: { (success) in
                    self.pickerView?.removeFromSuperview()
                })
            }
            
            pickerView?.didSelectedRowCallback = {
                (obj : String) -> Void in
                print(obj)
            }
            
            self.pickerView?.alpha = 1
            var frame: CGRect = (self.pickerView?.frame)!
            frame.origin.y = T1CConstants.SCREEN_HEIGHT
            self.pickerView?.frame = frame
            
            frame.origin.y = UIScreen.main.bounds.size.height - (self.pickerView?.frame.size.height)!
            UIView.animate(withDuration: 0.3, animations: {
                self.pickerView?.frame = frame
            })
        }
    }
    
    @IBAction func nextAction(sender: AnyObject) {
        let verifyPhoneNumberViewController = T1CVerifyPhoneNumberViewController(nibName: String(describing: T1CVerifyPhoneNumberViewController.self), bundle: nil)
        self.navigationController?.pushViewController(verifyPhoneNumberViewController, animated: true)
    }
}
