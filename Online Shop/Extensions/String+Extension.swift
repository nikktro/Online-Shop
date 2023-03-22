//
//  String+Extension.swift
//  Online Shop
//
//  Created by Nikolay Trofimov on 15.03.2023.
//

import SwiftUI

extension String {
    struct EmailValidation {
        private static let address = "[A-Z0-9a-z]([A-Z0-9a-z._%+-]{0,30}[A-Z0-9a-z])?"
        private static let serviceServer = "([A-Z0-9a-z]([A-Z0-9a-z-]{0,30}[A-Z0-9a-z])?\\.){1,5}"
        private static let dotDomain = "[A-Za-z]{2,8}"
        private static let emailRegex = address + "@" + serviceServer + dotDomain
        
        static let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        
    }
    
    func isEmail() -> Bool {
        return EmailValidation.emailPredicate.evaluate(with: self)
    }
    
}

