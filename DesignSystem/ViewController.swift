//
//  ViewController.swift
//  DesignSystem
//
//  Created by Mahmoud Sherbeny on 09/05/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var gradientView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = DesignSystem.Colors.primary.color
        
//        lblTitle.font = UIFont.preferredFont(forTextStyle: .title1)
//        lblTitle.adjustsFontForContentSizeCategory = true
        
//        guard let customFont = UIFont(name: "Custom", size: UIFont.systemFontSize) else {
//            return
//        }
//        lblTitle.font = UIFontMetrics(forTextStyle: .body).scaledFont(for: customFont)
//        lblTitle.adjustsFontForContentSizeCategory = true
        
        lblTitle.text = "Hello iOS Development"
        
        lblTitle.font = DesignSystem.TypoGraphy.style1.font
        
        lblTitle.textColor = UIColor.setGradientColorFrom(withSize: self.lblTitle.frame.size)
        gradientView.backgroundColor = UIColor.setGradientColorFrom(withSize: self.gradientView.frame.size)
    }


}

