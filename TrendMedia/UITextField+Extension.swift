//
//  UITextField+Extension.swift
//  TrendMedia
//
//  Created by Mac Pro 15 on 2022/07/19.
//

import UIKit

extension UITextField {
    
    //텍스트필드에서
    func borderColor() {
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.borderWidth = 1.0
        self.borderStyle = .none
    }
}
