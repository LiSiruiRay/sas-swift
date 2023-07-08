//
//  WelcomeViewController.swift
//  sas
//
//  Created by Ray on 7/8/23.
//

import Foundation
import UIKit
import FirebaseCore
import FirebaseFirestore
import FirebaseAuth
// ...
      

class WelcomeViewController: UIViewController {
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewed")
        // Do any additional setup after loading the view.
    }

    @IBAction func loginPressed(_ sender: UIButton) {
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                // ...
                if let e = error {
                    print("erroringinginging")
                    print(e)
                } else {
                    print("log in!")
                    self.performSegue(withIdentifier: "LoginToPiechart", sender: self)
                }
            }
        }
    }
    
}
