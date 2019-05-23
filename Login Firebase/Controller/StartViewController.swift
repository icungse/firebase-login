//
//  StartViewController.swift
//  Login Firebase
//
//  Created by icungse on 24/05/19.
//  Copyright © 2019 icung. All rights reserved.
//

import UIKit
import FirebaseAuth

class StartViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if Auth.auth().currentUser != nil {
            self.performSegue(withIdentifier: "alreadyLogin", sender: nil)
        }
    }
}
