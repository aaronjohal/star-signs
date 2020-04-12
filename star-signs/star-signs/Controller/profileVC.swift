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
    var datePicker = UIDatePicker ()
    
    
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var dateTxtField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        user = User()
        initKeyboardForTextFields()
        createDatePickerView()
        
    }
    
    
    
    func createDatePickerView(){
        
        datePicker.datePickerMode = .date
        
        //create toolbar
        let toolbar = UIToolbar()
        toolbar.sizeToFit() //fits the full screen
        
        //create bar button - done
        let dneButton = UIBarButtonItem (barButtonSystemItem: .done, target: nil, action: #selector(donePressed))
        toolbar.setItems([dneButton], animated: true)
        
        //assign toolbar to keyboard
        dateTxtField.inputAccessoryView = toolbar
        //assign date picker to the text view
        dateTxtField.inputView = datePicker
        
        
    }
    
    @objc func donePressed (){
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM"
        
        dateTxtField.text = dateFormatter.string(from: datePicker.date)
        view.endEditing(true) //dismiss the datePicker
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
    
    
    
    
    @IBAction func confirmPressed(_ sender: Any) {
        if let name = nameField.text, let dOB = dateTxtField.text { //if name is not nil
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



