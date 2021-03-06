//
//  Font.swift
//  DesignSystem
//
//  Created by Mahmoud Sherbeny on 09/05/2021.
//

import Foundation

enum Font: String {
    case thinItalic = "Poppins-ThinItalic"
    case regular = "Poppins-Regular"
    case bold = "Poppins-Bold"
    
    var name: String {
        return self.rawValue
    }
}

