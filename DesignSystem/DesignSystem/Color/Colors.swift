//
//  Colors.swift
//  DesignSystem
//
//  Created by Mahmoud Sherbeny on 09/05/2021.
//

import Foundation
import UIKit

extension DesignSystem {
    enum Colors: String {
        case primary = "Primary"
        
        var color: UIColor {
            return UIColor(named: self.rawValue)!
        }
        
    }
}

