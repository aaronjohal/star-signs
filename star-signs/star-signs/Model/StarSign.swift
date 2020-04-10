//
//  StarSign.swift
//  star-signs
//
//  Created by Aaron Johal on 09/04/2020.
//  Copyright © 2020 Aaron Johal. All rights reserved.
//

import Foundation

class StarSign {
    
    var name: String! //Aries
    var symbol: String? //possibly a jpg url
    var backgroundInfo: String! //this personality is etc...
    var startDate: String! //date range
    var endDate: String!
    
    init(name: String, startDate: String, endDate: String) {
        
        self.name = name
        self.startDate = startDate
        self.endDate = endDate
        
    }
    
    
    
    func returnImageURL(){
        //if(name == x)
        //return url
    }
    
    func returnBackgroundInfo(){
    
    }
    
}
