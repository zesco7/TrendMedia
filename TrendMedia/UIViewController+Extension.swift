//
//  UIViewController+Extension.swift
//  TrendMedia
//
//  Created by Mac Pro 15 on 2022/07/19.
//

import Foundation
import UIKit

extension UIViewController {
    
    func setBackgroundColor() {
        
        view.backgroundColor = .lightGray
    }
    
    func showAlert(alertTitle: String, alertMessage: String) {
        
        let alert = UIAlertController(title: "a", message: "b", preferredStyle: .alert)
        let ok = UIAlertAction(title: "ok", style: .default)
        alert.addAction(ok)
        present(alert, animated: true)
    }
    
}
