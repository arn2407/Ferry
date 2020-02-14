//
//  PassengerInputViewController.swift
//  FerryApp
//
//  Created by Arun Kumar on 14/02/20.
//  Copyright © 2020 Arun Kumar. All rights reserved.
//

import UIKit

class PassengerInputViewController: UIViewController {
    
    @IBOutlet weak var textfieldFrom: UITextField!
    @IBOutlet weak var textfieldTo: UITextField!
    
    private let kSegue = "segueFindResult"
    
    
    
    private let fromBuildingPicker: PickerInputView = {
        let input = PickerInputView()
        return input
    }()
    private let toBuildingPicker: PickerInputView = {
        let input = PickerInputView()
        return input
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        fromBuildingPicker.textfield = self.textfieldFrom
        toBuildingPicker.textfield = self.textfieldTo
        
        let fromAccessoryView = TextfieldAccessory()
        fromAccessoryView.addTarget(self, selector: #selector(self.resignFromTextField(_:)))
        
        self.textfieldFrom.inputAccessoryView = fromAccessoryView
        
        
        let toAccessoryView = TextfieldAccessory()
        toAccessoryView.addTarget(self, selector: #selector(self.resigntoTextField(_:)))
        
        self.textfieldTo.inputAccessoryView = toAccessoryView
        // Do any additional setup after loading the view.
    }
   
    
    @objc private func resignFromTextField(_ sender: UIBarButtonItem)
    {
        textfieldFrom.resignFirstResponder()
    }
    
    @objc private func resigntoTextField(_ sender: UIBarButtonItem)
    {
        textfieldTo.resignFirstResponder()
    }

    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        
        if let from = fromBuildingPicker.currentBuilding?.name , let to = toBuildingPicker.currentBuilding?.name
        {
            return true
        }
        
        return false
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
