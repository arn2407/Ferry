//
//  StartViewController.swift
//  FerryApp
//
//  Created by Arun Kumar on 14/02/20.
//  Copyright © 2020 Arun Kumar. All rights reserved.
//

import UIKit
import FirebaseAuth

class StartViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // start view controller
        // Do any additional setup after loading the view.
        if  Auth.auth().currentUser == nil {
        Auth.auth().signInAnonymously { (result, error) in
            print(error ?? "No error")
            print(result?.additionalUserInfo ?? "No Result")
        }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
              super.viewWillAppear(animated)
        
        navigationController?.setNavigationBarHidden(true, animated: false)
           
          }
          override func viewWillDisappear(_ animated: Bool) {
              super.viewWillDisappear(animated)
            navigationController?.setNavigationBarHidden(false, animated: false)
          }

}
