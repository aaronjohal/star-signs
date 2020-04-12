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
    var dateFormatter: DateFormatter!
    var starSign: StarSign!
   
    
    @IBOutlet weak var starSignLbl: UILabel!
    
    @IBOutlet weak var starSignImg: UIImageView!
    @IBOutlet weak var dateRngLbl: UILabel!
    @IBOutlet weak var starBioLbl: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        user.starSign = checkStarSign()
        starSign = StarSign (user: user)
        displayStarSign (starSign: starSign)
        
    }
    


        
         func checkStarSign() -> String{
        
  
         let Dob = user.dOB  //get back a tupple
            switch (Dob!) {
                
            case (21...31, 03), (01...19,04): //checking if it matches either the first statement or the second
                return "Aries"  //March 21-April 19
                
            case (20...30, 04), (01...20,05):
               //(April 20-May 20)
                return "Taurus"
                
            case (21...31, 05), (01...20,06):
                //(May 21-June 20)
                return "Gemini"
                
            case (21...30, 06), (01...22,07):
                //(June 21-July 22)
                return "Cancer"
                
            case (23...31, 07), (01...22,08):
                //(July 23-August 22)
               return "Leo"
                
            case (23...31, 08), (01...22,09):
                 //(August 23-September 22)
               return "Virgo"
                
            case (23...30, 09), (01...22,10):
               //(September 23-October 22)
               return "Libra"
                
            case (23...31, 10), (01...21,11):
                //(October 23-November 21)
               return "Scorpio"
                
            case (22...30, 11), (01...21,12):
                //(November 22-December 21)
                return "Sagittarius"
                
            case (22...31, 12), (01...19,01):
                //(December 22-January 19)
                return "Capricorn"
                
            case (20...31, 01), (01...18,02):
               // (January 20-February 18)
                return "Aquarius"
                
            case (19...29, 02), (01...20,03):
               // (February 19-March 20)
                return "Pisces"
                
            default:
                
                return "None"
               // return "You do not have a star sign!"
                
            }
  
   
    }
    
    
    func displayStarSign(starSign: StarSign){
        
        starSignLbl.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        starSignLbl.text = starSign.name
        starSignImg.image = UIImage (named: starSign.getImage())
        dateRngLbl.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        dateRngLbl.text = starSign.getDate()
        starBioLbl.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        starBioLbl.text = starSign.getBio()
    
    
    }

}
