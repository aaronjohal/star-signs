//
//  User.swift
//  star-signs
//
//  Created by Aaron Johal on 09/04/2020.
//  Copyright © 2020 Aaron Johal. All rights reserved.
//

import Foundation

class User {
    
    
    var name = ""
    var dob = ""
    var starSign: StarSign?
    
    
    
    func returnStarSign(starSign: StarSign){
        
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM"
        let startDate = starSign.startDate
        let endDate = starSign.endDate
              
        //maybe here i want to put the start and end dates in the starSign object? and then compare them? dont want to reuse code
              
        if let usersDOB = dateFormatter.date(from: dob){
            if let startRange = dateFormatter.date(from: startDate!), let endRange = dateFormatter.date(from: endDate!){
                if( usersDOB.isBetween(startRange, and: endRange)){
                    print("if usersDOB: \(usersDOB) is between \(startRange) & \(endRange)")
                    print("then the user is a \(starSign.name!) because the range is \(starSign.startDate!) and \(starSign.endDate!)")
                    
                }
            }
            
        }
        
      
        
    }

}
