//
//  T1CView.swift
//  The1Card
//
//  Created by 352SonDH2-MC on 8/22/17.
//  Copyright © 2017 Aleph-Labs. All rights reserved.
//

import UIKit

class T1CView: UIView {
    private let BORDER_WIDTH_VIEW: CGFloat = 1

    override func awakeFromNib() {
        super.awakeFromNib()
        self.setupUI()
    }
    
    @IBInspectable var borderColor: UIColor? {
        didSet {
            self.layer.borderColor = borderColor?.cgColor
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat? {
        didSet {
            self.layer.cornerRadius = cornerRadius!
        }
    }
    
    func setupUI() {
        self.clipsToBounds = true
        self.layer.borderWidth = BORDER_WIDTH_VIEW
        self.backgroundColor = UIColor.clear
    }

}
