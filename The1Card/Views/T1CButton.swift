//
//  T1CButton.swift
//  The1Card
//
//  Created by HOANGSON on 8/21/17.
//  Copyright © 2017 Aleph-Labs. All rights reserved.
//

import UIKit

class T1CButton: UIButton {
    
   enum BorderColor:String {
        case Red = "red"
        case Gray = "gray"
        case Default = "clear"
    }

    
    
    private let CORNER_RADIUS: CGFloat = 5
    private let BORDER_WIDTH_BUTTON: CGFloat = 1
    
    private let DEFAULT_BORDER_COLOR = UIColor.clear.cgColor
    
    private let FONT_SIZE: CGFloat = 15
    
    @IBInspectable var color: String? {
        get{
            return "gray"
        }
        set{
            if color == "gray" {
                self.layer.borderColor = UIColor.gray.cgColor
            }
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        self.setupUI()
    }
    
    func setupUI() {
        self.clipsToBounds = true
        self.layer.cornerRadius = CORNER_RADIUS
        self.layer.borderWidth = BORDER_WIDTH_BUTTON
        
        self.titleLabel?.font = UIFont.systemFont(ofSize: FONT_SIZE)
        self.setTitleColor(UIColor.red, for: UIControlState.normal)
    }

}
