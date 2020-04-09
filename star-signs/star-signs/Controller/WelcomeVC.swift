//
//  ViewController.swift
//  star-signs
//
//  Created by Aaron Johal on 09/04/2020.
//  Copyright © 2020 Aaron Johal. All rights reserved.
//

import UIKit

class WelcomeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "profileVCSegue", sender: self)
        
        
    }
    
}

