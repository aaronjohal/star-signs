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
    
    func getDate() -> String{
        
        switch (name){
            
        case "Aries": return "(Mar 21 – Apr 19)"
        case "Taurus": return "(Apr 20-May 20)"
        case  "Gemini": return "(May 21-Jun 20)"
        case "Cancer": return "(June 21-July 22)"
        case "Leo": return "(July 23-Aug 22)"
        case "Virgo": return "(Aug 23-Sep 22)"
        case "Libra": return "(Sep 23-Oct 22)"
        case "Scorpio":return "(Oct 23-Nov 21)"
        case "Sagittarius": return "(Nov 22-Dec 21)"
        case  "Capricorn": return "(Dec 22-Jan 19)"
        case  "Aquarius":return "(Jan 20-Feb 18)"
        case "Pisces": return "(Feb 19-Mar 20)"
        default: return "None"
            
            
        }
        
        
    }
    
    func getBio() -> String{
        
        switch (name){
            
        case "Aries": return "The pioneer and trailblazer of the horoscope wheel, Aries energy helps us initiate, fight for our beliefs and fearlessly put ourselves out there."
        case "Taurus": return "The persistent provider of the horoscope family, Taurus energy helps us seek security, enjoy earthly pleasures and get the job done."
        case  "Gemini": return "The most versatile and vibrant horoscope sign, Gemini energy helps us communicate, collaborate and fly our freak flags at full mast."
        case "Cancer": return "The natural nurturer of the horoscope wheel, Cancer energy helps us connect with our feelings, plant deep roots and feather our family nests."
        case "Leo": return "The drama queen and regal ruler of the horoscope clan, Leo energy helps us shine, express ourselves boldly and wear our hearts on our sleeves."
        case "Virgo": return "The masterful helper of the horoscope wheel, Virgo energy teaches us to serve, do impeccable work and prioritize wellbeing—of ourselves, our loved ones and the planet."
        case "Libra": return "The balanced beautifier of the horoscope family, Libra energy inspires us to seek peace, harmony and cooperation—and to do it with style and grace."
        case "Scorpio":return "The most intense and focused of the horoscope signs, Scorpio energy helps us dive deep, merge our superpowers and form bonds that are built to last."
        case "Sagittarius": return "The worldly adventurer of the horoscope wheel, Sagittarius energy inspires us to dream big, chase the impossible and take fearless risks."
        case  "Capricorn": return "The measured master planner of the horoscope family, Capricorn energy teaches us the power of structure and long-term goals."
        case  "Aquarius":return "The mad scientist and humanitarian of the horoscope wheel, futuristic Aquarius energy helps us innovate and unite for social justice."
        case "Pisces": return "The dreamer and healer of the horoscope family, Pisces energy awakens compassion, imagination and artistry, uniting us as one."
        default: return "None"
            
            
        }
        
        
    }
    
    
    
    
}



