//
//  ColorExtentation.swift
//  DesignSystem
//
//  Created by Mahmoud Sherbeny on 09/05/2021.
//

import Foundation
import UIKit

enum Diagonal {
    case up
    case down
}

extension UIColor {
    static func setGradientColorFrom(withSize frameSize: CGSize?, toDirection direction: Diagonal? = .up) -> UIColor {
        
        let size = frameSize ?? CGSize.zero;
        UIGraphicsBeginImageContextWithOptions(size, false, 0)
        let context = UIGraphicsGetCurrentContext()
        let colorspace = CGColorSpaceCreateDeviceRGB()
        
        var colors = [CGColor]()
        
        for item in DesignSystem.GradientColors.allCases {
            colors.append(item.color.cgColor)
        }
        
        let gradient = CGGradient(colorsSpace: colorspace, colors: colors as CFArray, locations: nil)
        
        switch direction {
        case .up, .none:
            context!.drawLinearGradient(gradient!, start: CGPoint(x: 0, y: size.height), end: CGPoint(x: size.width, y: 0), options: CGGradientDrawingOptions(rawValue: UInt32(0)))
        case .down:
            context!.drawLinearGradient(gradient!, start: CGPoint(x: 0, y: 0), end: CGPoint(x: size.width, y: size.height), options: CGGradientDrawingOptions(rawValue: UInt32(0)))
        }
        
        let image = UIGraphicsGetImageFromCurrentImageContext()
        
        UIGraphicsEndImageContext()
        
        let finalCColor = UIColor(patternImage: image!)
        return finalCColor
    }
}
