//
//  ViewController.swift
//  ResumeScanner
//
//  Created by Jiatao Cheng on 10/16/18.
//  Copyright © 2018 Homi, Inc. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    
    
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    
    @IBAction func login(_ sender: Any) {
        let u_name = self.username.text as! String
        let pass = self.password.text as! String
        
        Auth.auth().signIn(withEmail: u_name, password: pass) { (user, error) in
            // ...
            if ((user) != nil) {
                //navigate to next page
            } else {
                //display error
            }
        }
    }
    
    @IBAction func signup(_ sender: Any) {
        let u_name = self.username.text as! String
        let pass = self.password.text as! String
        
        Auth.auth().createUser(withEmail: u_name, password: pass) { (authResult, error) in
            // ...
            guard let user = authResult?.user else { return }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        Auth.auth().addStateDidChangeListener { (auth, user) in
            // ...
            //if auth then proceed
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}

