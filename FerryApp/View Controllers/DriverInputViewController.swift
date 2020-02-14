//
//  DriverInputViewController.swift
//  FerryApp
//
//  Created by Arun Kumar on 14/02/20.
//  Copyright © 2020 Arun Kumar. All rights reserved.
//

import UIKit

class DriverInputViewController: UIViewController {

    @IBOutlet weak var textfieldVehicalNumber: UITextField!
    @IBOutlet weak var textfieldStartTime: UITextField!
    @IBOutlet weak var textfieldFrom: UITextField!
    @IBOutlet weak var textfieldTo: UITextField!
    
    
    private let fromBuildingPicker: PickerInputView = {
        let input = PickerInputView()
        return input
    }()
    private let toBuildingPicker: PickerInputView = {
        let input = PickerInputView()
        return input
    }()
    
    
    private lazy var datePicker: UIDatePicker = {
        let datePicker: UIDatePicker = UIDatePicker()
        
        
        
        // Set some of UIDatePicker properties
        datePicker.timeZone = NSTimeZone.local
        
        datePicker.minimumDate = Date()
        
        // Add an event to call onDidChangeDate function when value is changed.
        datePicker.addTarget(self, action: #selector(self.datePickerValueChanged(_:)), for: .valueChanged)
        
        return datePicker
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fromBuildingPicker.textfield = textfieldFrom
        toBuildingPicker.textfield = textfieldTo
        
        let fromAccessoryView = TextfieldAccessory()
        fromAccessoryView.addTarget(self, selector: #selector(self.resignFromTextField(_:)))
        
        self.textfieldFrom.inputAccessoryView = fromAccessoryView
        
        
        let toAccessoryView = TextfieldAccessory()
        toAccessoryView.addTarget(self, selector: #selector(self.resigntoTextField(_:)))
        
        self.textfieldTo.inputAccessoryView = toAccessoryView
        
        textfieldStartTime.inputView = datePicker
        let timeAccessoryView = TextfieldAccessory()
        timeAccessoryView.addTarget(self, selector: #selector(self.resigntimeTextField(_:)))
        textfieldStartTime.inputAccessoryView = timeAccessoryView
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func actionTrip(_ sender: UIButton)
    {
        
    }
    
    @objc private func datePickerValueChanged(_ sender: UIDatePicker)
    {
        
    }
    
       @objc private func resignFromTextField(_ sender: UIBarButtonItem)
       {
           textfieldFrom.resignFirstResponder()
       }
       
       @objc private func resigntoTextField(_ sender: UIBarButtonItem)
       {
           textfieldTo.resignFirstResponder()
       }
    @objc private func resigntimeTextField(_ sender: UIBarButtonItem)
    {
        textfieldStartTime.resignFirstResponder()
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

extension DriverInputViewController: UITextFieldDelegate
{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
