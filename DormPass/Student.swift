//
//  Student.swift
//  DormPass
//
//  Created by Ryan on 4/21/17.
//  Copyright © 2017 Ryan. All rights reserved.
//

import Foundation
import Firebase

// make a list of things that require for signing in/out
class Student {
    let key: String
    var name: String
    var returnTime: String
    var destination: String
    var currentTime: String
    let ref: FIRDatabaseReference?
    
    // making the list of required information
    init(name: String, returnTime: String, destination: String, currentTime: String, key:String = "") {
        self.name = name
        self.returnTime = returnTime
        self.destination = destination
        self.currentTime = currentTime
        self.key = key
        self.ref = nil
        // Sign out system
        var isSignedOut: Bool = false
    }
    
    // save information to Firebase
    init(snapshot: FIRDataSnapshot) {
        key = snapshot.key
        let snapshotValue = snapshot.value as! [String: AnyObject]
        name = snapshotValue["name"] as! String
        returnTime = snapshotValue["returnTime"] as! String
        destination = snapshotValue["destination"] as! String
        currentTime = snapshotValue["currentTime"] as! String
        ref = snapshot.ref
    }
    
    func toAnyObject() -> Any {
        return [
            "name": name,
            "returnTime": returnTime,
            "destination": destination,
            "currentTime": currentTime
        ]
    }
    
}
