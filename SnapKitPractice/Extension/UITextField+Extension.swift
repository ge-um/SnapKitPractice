//
//  UITextField+Extension.swift
//  SnapKitPractice
//
//  Created by 금가경 on 7/21/25.
//

import UIKit

extension UITextField {
    static func `default`(placeholder: String) -> UITextField {
        let textField = UITextField()
        textField.placeholder = placeholder
        textField.font = .systemFont(ofSize: 15)
        textField.backgroundColor = .darkGray
        textField.borderStyle = .roundedRect
        textField.textAlignment = .center
        
        let attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [.foregroundColor: UIColor.white])
        textField.attributedPlaceholder = attributedPlaceholder
        
        return textField
    }
}
