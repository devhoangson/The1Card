//
//  T1CTextField.swift
//  The1Card
//
//  Created by HOANGSON on 8/21/17.
//  Copyright © 2017 Aleph-Labs. All rights reserved.
//

import UIKit

class T1CTextField: UITextField {
    
    private let CORNER_RADIUS: CGFloat = 5
    private let PADDING_LEFT_TEXTFIELD: CGFloat = 10
    private let BORDER_WIDTH_TEXTFIELD: CGFloat = 1
    
    private let DEFAULT_BORDER_COLOR = UIColor.lightGray.cgColor
    private let FOCUS_BORDER_COLOR = UIColor.black.cgColor
    
    private let FONT_SIZE: CGFloat = 12

    private var imageView: UIImageView?
    
    @IBInspectable var inset: CGFloat = 0
 

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.setupUI()
    }
    
    override func becomeFirstResponder() -> Bool {
        self.layer.borderColor = FOCUS_BORDER_COLOR
        return super.becomeFirstResponder()
    }
    
    override func resignFirstResponder() -> Bool {
        self.layer.borderColor = DEFAULT_BORDER_COLOR
        return super.becomeFirstResponder()
    }

    private func setupUI() {
        self.borderStyle = UITextBorderStyle.none;
        self.layer.cornerRadius = CORNER_RADIUS
        self.layer.borderWidth = BORDER_WIDTH_TEXTFIELD
        self.layer.borderColor = DEFAULT_BORDER_COLOR
        
        self.backgroundColor = UIColor.clear
        
        self.textAlignment = NSTextAlignment.left
        self.font = UIFont.systemFont(ofSize: FONT_SIZE)
        
        self.imageView = UIImageView.init(frame: CGRect(x: 0, y: 0, width: 40, height: self.bounds.size.height))
        self.rightViewMode = UITextFieldViewMode.always
        self.rightView = self.imageView
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: PADDING_LEFT_TEXTFIELD, dy: PADDING_LEFT_TEXTFIELD)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return textRect(forBounds: bounds)
    }

}
