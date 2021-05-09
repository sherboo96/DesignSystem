//
//  Gradient.swift
//  DesignSystem
//
//  Created by Mahmoud Sherbeny on 09/05/2021.
//

import Foundation
import UIKit

struct Gradient {
    func horizontalGradientColorFrom(withSize frameSize:CGSize?, toDirection direction: Direction? = .horizontal) -> UIColor
    {
        
        let size = frameSize ?? CGSize.zero;
        UIGraphicsBeginImageContextWithOptions(size, false, 0)
        let context = UIGraphicsGetCurrentContext()
        let colorspace = CGColorSpaceCreateDeviceRGB()
        
        let colors = [DesignSystem.Colors.primary.color, DesignSystem.Colors.primary.color, DesignSystem.Colors.primary.color, DesignSystem.Colors.primary.color]
        
        let gradient = CGGradient(colorsSpace: colorspace, colors: colors as CFArray, locations: nil)
        
        switch direction {
        case .horizontal, .none:
            context!.drawLinearGradient(gradient!, start: CGPoint(x: 0, y: size.height), end: CGPoint(x: size.width, y: 0), options: CGGradientDrawingOptions(rawValue: UInt32(0)))
        case .vertical:
            context!.drawLinearGradient(gradient!, start: CGPoint(x: 0, y: size.height), end: CGPoint(x: 1, y: 0), options: CGGradientDrawingOptions(rawValue: UInt32(0)))
        }
        
        let image = UIGraphicsGetImageFromCurrentImageContext();
        
        UIGraphicsEndImageContext();
        
        let finalCColor = UIColor(patternImage: image!);
        return finalCColor;
        
    }
}
