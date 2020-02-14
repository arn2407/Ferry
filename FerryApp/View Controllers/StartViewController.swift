//
//  StartViewController.swift
//  FerryApp
//
//  Created by Arun Kumar on 14/02/20.
//  Copyright © 2020 Arun Kumar. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
