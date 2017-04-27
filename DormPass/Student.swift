//
//  Student.swift
//  DormPass
//
//  Created by Ryan on 4/21/17.
//  Copyright © 2017 Ryan. All rights reserved.
//

import Foundation

class Student {
    var name: String
    var returnTime: String
    var destination: String
    var currentTime: String
    
    init(name: String, returnTime: String, destination: String, currentTime: String) {
        self.name = name
        self.returnTime = returnTime
        self.destination = destination
        self.currentTime = currentTime
    }
    
}
