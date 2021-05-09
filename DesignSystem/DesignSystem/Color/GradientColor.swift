//
//  Gradient.swift
//  DesignSystem
//
//  Created by Mahmoud Sherbeny on 09/05/2021.
//

import Foundation
import UIKit


extension DesignSystem {
    enum GradientColors: String, CaseIterable {
        case primary = "ColorPrimary"
        case secondary = "ColorSecandary"
        case third = "ColorThird"
        case fourth = "ColorForth"
        
        var color: UIColor {
            return UIColor(named: self.rawValue)!
        }
    }
}

