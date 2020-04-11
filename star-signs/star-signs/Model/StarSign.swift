//
//  StarSign.swift
//  star-signs
//
//  Created by Aaron Johal on 11/04/2020.
//  Copyright © 2020 Aaron Johal. All rights reserved.
//

import Foundation


class StarSign {
    
    var name: String!
    var bio: String!
   
    
    init(user: User) {
        
        name = user.starSign
       
    }
    
    
    
    
    
    func getImage() -> String{
        
        switch (name){
            
        case "Aries": return "aries" //name of image file
        case "Taurus": return "taurus"
        case  "Gemini": return "gemini"
        case "Cancer": return "cancer"
        case "Leo": return "leo"
        case "Virgo": return "virgo"
        case "Libra": return "libra"
        case "Scorpio":return "scorpio"
        case "Sagittarius": return "sagittarius"
        case  "Capricorn": return "capricorn"
        case  "Aquarius":return "aquarius"
        case "Pisces": return "pisces"
        default: return "None"
          
            
        }
        
           
        }
        
  
        
    }
    
    

