//
//  SignUpViewController.swift
//  Login Firebase
//
//  Created by icungse on 24/05/19.
//  Copyright © 2019 icung. All rights reserved.
//

import UIKit
import FirebaseAuth

class SignUpViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var passwordConfirmationTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func signUp(_ sender: Any) {
        if passwordTextField.text != passwordConfirmationTextField.text {
            
            let alertController = UIAlertController(title: "Password not match", message: "Please retype password", preferredStyle: .alert)
            let defaultAction = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
            alertController.addAction(defaultAction)
            self.present(alertController, animated: true, completion: nil)
        } else {
            Auth.auth().createUser(withEmail: emailTextField.text!, password: passwordTextField.text!) {
                (user, error) in
                
                if error == nil {
                    self.performSegue(withIdentifier: "signup", sender: self)
                } else {
                    let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                    let defaultAlert = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
                    
                    alertController.addAction(defaultAlert)
                    self.present(alertController, animated: true, completion: nil)
                }
            }
        }
    }
    
    
}
