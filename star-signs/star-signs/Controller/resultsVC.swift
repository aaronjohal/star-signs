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
   
    


    override func viewDidLoad() {
        super.viewDidLoad()
        
        //user.returnStarSign()
        
        initStarSigns()
        loopThroughArray()
      
    
      
    }
    
    
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
    
    func loopThroughArray(){
        
       
        
        if let starSignList = starSignList {
            for star in starSignList {
                
                user.returnStarSign(starSign: star)
                
//                print("star name is: \(String(describing: star.name!)) and start date is: \(String(describing: star.startDate)) & end date is: \(star.endDate!) & users dob is: \(user.dob)")


            }
        }
        
    }
    
    
        
    
        
        
        
        
//
//
//        if let starSignList = starSignList {
//
//            let dateFormatter = DateFormatter()
//             dateFormatter.dateFormat = "dd/MM"
//
//            for star in starSignList {
////                print(star.name!)
////                print(star.startDate!)
////                print(star.endDate!)
////
//
//
//               let usersDOB = dateFormatter.date(from: user.dob)
//                print(user.dob)
//                print(usersDOB)
//                    print("success")
////                    if let startRange = dateFormatter.date(from: star.startDate), let endRange = dateFormatter.date(from: star.endDate){
////                        print("works here 2")
////                        if usersDOB.isBetween(startRange, and: endRange){
////                            print("works here 3")
////                            print(star.name)
////                        }
////
////                    }
//
//
//
//
//
//
//        }
//
//    }
//
//
////
////        for star in starSignList {
////
////            print(star.startDate)
//
////            if let usersDOB = dateFormatter.date(from: user.dob){
////                if let startRange = dateFormatter.date(from: star.startDate), let endRange = dateFormatter.date(from: star.endDate){
////                    if( usersDOB.isBetween(startRange, and: endRange)){
////                        print("you are a \(star.name!)")
////                    } else {
////                        print("you are not pisces!")
////                    }
////                }
////
////            }
//
//
//        //  }
//
//
//
//
//
    
       
        
    
    
    
    /** Determines a users star sign based on their dob*/
    
    func calcStarSign(){
       
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM"
        let startDate = "19/02"
        let endDate = "21/03"
        
        //maybe here i want to put the start and end dates in the starSign object? and then compare them? dont want to reuse code
        
        if let usersDOB = dateFormatter.date(from: user.dob){
           
            if let startRange = dateFormatter.date(from: startDate), let endRange = dateFormatter.date(from: endDate){
                if( usersDOB.isBetween(startRange, and: endRange)){
                    print("you are a pisces!")
                } else {
                    print("you are not pisces!")
                }
            }
            
        }
        
        //
    }

}

