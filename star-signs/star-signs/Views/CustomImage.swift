//
//  customImage.swift
//  star-signs
//
//  Created by Aaron Johal on 12/04/2020.
//  Copyright © 2020 Aaron Johal. All rights reserved.
//

import UIKit

@IBDesignable

class CustomImage: UIImageView {
    
    override func prepareForInterfaceBuilder() {
        // layer.cornerRadius = 5.0
       customStyling()
        
        
        
      }

    override func awakeFromNib() {
        super.awakeFromNib()
        customStyling()
        
       
        
    }
    
   func customStyling() {
    print("running")
    layer.masksToBounds = true
    layer.cornerRadius = layer.bounds.width / 2
        
    }

}
