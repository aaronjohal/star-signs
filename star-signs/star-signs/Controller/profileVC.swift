//
//  profileVC.swift
//  star-signs
//
//  Created by Aaron Johal on 09/04/2020.
//  Copyright © 2020 Aaron Johal. All rights reserved.
//

import UIKit

class profileVC: UIViewController, UITextFieldDelegate {
    
    var user: User!
    var datePicker : UIDatePicker!
    
   

    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var dateTxtField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        user = User()
        initKeyboardForTextFields()
        
        
        datePicker = UIDatePicker()
        datePicker.datePickerMode = .date
        datePicker.addTarget(self, action: #selector(profileVC.dateChanged(datePicker:)), for: .valueChanged)
        dateTxtField.inputView = datePicker
        
    
       
    }
    
    /** Set the keyboard dismiss settings for the text view */
    func initKeyboardForTextFields (){
        nameField.delegate = self //have to make the view controller the delegate of the textfield
        
        //tap away from keyboard to dismiss
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:)))
             view.addGestureRecognizer(tap)
     
        
    }
    
   /** Dismisses the keyboard when return is pressed */
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    
    /** set the date from the datePicker in the UI text field*/
    
    @objc func dateChanged(datePicker: UIDatePicker){
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat =  "dd/MM" //will need to extract the date and the month from this
        
        dateTxtField.text = dateFormatter.string(from: datePicker.date)
        view.endEditing(true) //dismiss the datePicker
        

        
    }
    

    @IBAction func confirmPressed(_ sender: Any) {
        if let name = nameField.text, let dOB = dateTxtField.text { //if name is not nil
           // user.name = name
            //user.dob = dOB
            
            saveUserProfile(name: name, dob: dOB)
        }
        
    
        
      performSegue(withIdentifier: "resultsVCSegue", sender: self)

    }
    
    
    /** Save the users profile with the name and DOB*/
    func saveUserProfile(name: String, dob: String){
        
       
        
      let dateFormatter = DateFormatter()
         dateFormatter.dateFormat =  "dd/MM"
        
        if let date = dateFormatter.date(from: dob) {
            dateFormatter.dateFormat = "MM"
            let month = Int(dateFormatter.string(from: date))!
              dateFormatter.dateFormat = "dd"
            let day = Int(dateFormatter.string(from: date))!
            

            user.dOB = (day: day, month: month)
       
        }
        user.name = name
       
            
            
        
    }
    
    
    
    
    /** prepare and send the objects/data to the next storyboard segue */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let resultsVC = segue.destination as? resultsVC {
            resultsVC.user = user

        }
    }
    
    
    }
    


