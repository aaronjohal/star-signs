//
//  resultsVC.swift
//  star-signs
//
//  Created by Aaron Johal on 10/04/2020.
//  Copyright © 2020 Aaron Johal. All rights reserved.
//

import UIKit

class resultsVC: UIViewController {
    
    
    var user: User!
    var starSignList: [StarSign]?
    var dateFormatter: DateFormatter!
    
   
    


    override func viewDidLoad() {
        super.viewDidLoad()
        
        //user.returnStarSign()
        dateFormatter = DateFormatter ()
        dateFormatter.dateFormat = "dd/MM"
        
        initStarSigns()
        loopThroughArray()
        
       
       print("constructor: \(user.name)")
    
      
    }
    
    /** init the stars*/
    func initStarSigns (){

       //Aries — the ram (March 21-April 19)
        let Aries = StarSign(name: "Aries", startDate: "21/03", endDate: "19/04")
        //Taurus — the bull (April 20-May 20)
        let Taurus = StarSign(name: "Taurus", startDate: "20/04", endDate: "20/05")
        //Gemini — the twins (May 21-June 20)
        let Gemini = StarSign(name: "Gemini", startDate: "21/05", endDate: "20/06")
        //Cancer — the crab (June 21-July 22)
        let Cancer = StarSign(name: "Cancer", startDate: "21/06", endDate: "22/07")
        //Leo — the lion (July 23-August 22)
        let Leo = StarSign(name: "Leo", startDate: "23/07", endDate: "22/08")
        //Virgo — the maiden (August 23-September 22)
        let Virgo = StarSign(name: "Virgo", startDate: "23/08", endDate: "22/09")
        //Libra — the scales (September 23-October 22)
        let Libra = StarSign(name: "Libra", startDate: "23/09", endDate: "22/10")
        //Scorpio — the scorpion (October 23-November 21)
        let Scorpio = StarSign(name: "Scorpio", startDate: "23/10", endDate: "21/11")
        //Sagittarius — the archer (November 22-December 21)
         let Sagittarius = StarSign(name: "Sagittarius", startDate: "22/11", endDate: "21/12")
        //Capricorn — the sea goat (December 22-January 19)
        let Capricorn = StarSign (name: "Capricorn", startDate:"22/12", endDate: "19/01" )
        //Aquarius — the water bearer (January 20-February 18)
        let Aquarius = StarSign(name: "Aquarius", startDate: "20/01", endDate: "18/02")
        //Pisces — the fish (February 19-March 20)
       let  Pisces = StarSign(name: "Pisces", startDate: "19/02", endDate: "20/03")
        starSignList = [Aries, Taurus, Gemini, Cancer, Leo, Virgo, Libra, Scorpio, Sagittarius, Aquarius, Capricorn, Pisces]
    }
    
    /** loop through the array to */
    func loopThroughArray(){
        
        if let starSignList = starSignList {
            for star in starSignList {

               checkMyStarSign(user: user, starsign: star)
                
            }
        }
        
        print("loop through the array: \(user.name)")
    }
    
    
    /** Method that checks the users star sign by seeing if their date of birth is within range*/
    func checkMyStarSign(user: User, starsign : StarSign)  {
        
       
        
        if let getUsersDOB = dateFormatter.date(from: user.dob){
            
            if let getStarDate = dateFormatter.date(from: starsign.startDate),  let getStarEndDate = dateFormatter.date(from: starsign.endDate){
                
                
                if getUsersDOB <= getStarEndDate && getUsersDOB >= getStarDate {
                   
                    
                    user.name = starsign.name
                    
                    
                }
                
            }
                  
        }
         
    
  
    }

}
