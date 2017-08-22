//
//  T1CButton.swift
//  The1Card
//
//  Created by HOANGSON on 8/21/17.
//  Copyright © 2017 Aleph-Labs. All rights reserved.
//

import UIKit

class T1CButton: UIButton {
    
    private let CORNER_RADIUS: CGFloat = 20
    private let BORDER_WIDTH_BUTTON: CGFloat = 1
    
    private let DEFAULT_BORDER_COLOR = UIColor.clear.cgColor
    
    private let FONT_SIZE: CGFloat = 15
    
    @IBInspectable var borderColor: UIColor? {
        didSet {
            self.layer.borderColor = borderColor?.cgColor
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
    }

}
