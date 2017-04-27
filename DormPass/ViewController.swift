//
//  ViewController.swift
//  DormPass
//
//  Created by Ryan on 3/10/17.
//  Copyright © 2017 Ryan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Check if the user is logged in.
        let client = BAAClient.sharedClient()
        if client.isAuthenticated() {
            statusLabel.text = "Welcome!"
        } else {
            statusLabel.text = "Not Logged in."
            self.navigationController?.performSegue(withIdentifier: "showLogin", sender: nil)
        }

        // Set the configuration for your app
        // TODO: Replace with your project's config object
        let config = {
            apiKey;: "<AIzaSyDahM4vZeqS3TRMmk1mqeC0jq1_6AILNVc>",
            authDomain: '<your-auth-domain>',
            databaseURL: '<your-database-url>',
            storageBucket: '<your-storage-bucket>'
        };
        firebase.initializeApp(config);
        
        // Get a reference to the database service
        let database = firebase.database();
}

