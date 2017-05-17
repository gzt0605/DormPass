//
//  SignOutViewController.swift
//  DormPass
//
//  Created by Ryan on 3/17/17.
//  Copyright © 2017 Ryan. All rights reserved.
//

import UIKit
import Firebase

// link information with text field
class SignOutViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var currentTimeField: UITextField!
    @IBOutlet weak var destinationField: UITextField!
    @IBOutlet weak var returnTimeField: UITextField!
    let ref = FIRDatabase.database().reference(withPath: "students")
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // Keep students information as they entered
    @IBAction func StudentSignOut(_ sender: Any) {
        let studentName = nameField.text
        let currentTime = currentTimeField.text
        let destination = destinationField.text
        let returnTime = returnTimeField.text
        let studentRecord = Student(name: studentName!, returnTime: returnTime!, destination: destination!, currentTime: currentTime!)
        
        let studentRecordRef = self.ref.child(studentName!)
        studentRecordRef.setValue(studentRecord.toAnyObject())
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
