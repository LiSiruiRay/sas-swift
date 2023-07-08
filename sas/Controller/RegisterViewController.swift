//
//  RegisterViewController.swift
//  sas
//
//  Created by Ray on 7/8/23.
//

import Foundation
import UIKit
import Firebase
import FirebaseCore
import FirebaseAuth

class RegisterViewController: UIViewController {
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    
    @IBAction func registerButtonPressed(_ sender: UIButton) {
        if let emailInput = email.text, let passwordInput = password.text {
            Auth.auth().createUser(withEmail: emailInput, password: passwordInput) { authResult, error in
                            if let e = error {
                                print(e)
                            } else {
                                self.performSegue(withIdentifier: "RegisterToPieChart", sender: self)
                            }
                        }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewed register")
        // Do any additional setup after loading the view.
    }


}
