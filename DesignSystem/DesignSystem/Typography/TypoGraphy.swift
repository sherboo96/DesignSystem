//
//  TypoGraphy.swift
//  DesignSystem
//
//  Created by Mahmoud Sherbeny on 09/05/2021.
//

import Foundation
import UIKit

extension DesignSystem {
    enum TypoGraphy {
        case style1 //32.0 , bold
        case style2 //16.0 , regular
        
        private var fontDescriptor: CustomFontDescriptor {
            switch self {
            case .style1:
                return CustomFontDescriptor(font: .bold, size: 32.0, style: .body)
            case .style2:
                return CustomFontDescriptor(font: .regular, size: 16.0, style: .title1)
            }
        }
        
        var font: UIFont {
            guard let font = UIFont(name: fontDescriptor.font.name, size: fontDescriptor.size) else {
                return UIFont.preferredFont(forTextStyle: fontDescriptor.style)
            }
            let fontMertix = UIFontMetrics(forTextStyle: fontDescriptor.style)
            return fontMertix.scaledFont(for: font)
        }
    }
}
