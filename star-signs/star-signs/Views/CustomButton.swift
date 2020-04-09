//
//  CustomButton.swift
//  star-signs
//
//  Created by Aaron Johal on 09/04/2020.
//  Copyright © 2020 Aaron Johal. All rights reserved.
//

import UIKit

@IBDesignable

class CustomButton: UIButton {

    override func prepareForInterfaceBuilder() {
        customStyling()
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customStyling()
     
      
    }
    
    func customStyling (){
        backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        layer.borderWidth = 2.0
        layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        layer.cornerRadius = 5.0
    }
    
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    
   
}
