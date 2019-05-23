//
//  ViewController.swift
//  Login Firebase
//
//  Created by icungse on 24/05/19.
//  Copyright © 2019 icung. All rights reserved.
//

import UIKit
import FirebaseAuth

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func logout(_ sender: Any) {
        do {
            try Auth.auth().signOut()
        }
        catch let signOutError as NSError {
            print("Error signing out: %@", signOutError)
        }
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let initial = storyBoard.instantiateInitialViewController()
        UIApplication.shared.keyWindow?.rootViewController = initial
        
    }
    
}

