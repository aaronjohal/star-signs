//
//  dateInRange.swift
//  star-signs
//
//  Created by Aaron Johal on 10/04/2020.
//  Copyright © 2020 Aaron Johal. All rights reserved.
//

import Foundation

extension Date {
    func isBetween(_ date1: Date, and date2: Date) -> Bool {
        return (min(date1, date2) ... max(date1, date2)).contains(self as Date)
    }
    
    
}

