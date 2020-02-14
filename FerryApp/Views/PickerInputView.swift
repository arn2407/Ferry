//
//  PickerInputView.swift
//  FerryApp
//
//  Created by Arun Kumar on 14/02/20.
//  Copyright © 2020 Arun Kumar. All rights reserved.
//

import UIKit


class PickerInputView: NSObject {
    let pickerView: UIPickerView = {
       let picker = UIPickerView()
        return picker
    }()
    
    var currentBuilding: Building?
    
    weak var textfield: UITextField?
        {
        didSet {
            textfield?.inputView = self.pickerView
        }
    }
    
  override  init() {
        super.init()
    self.pickerView.delegate = self
    self.pickerView.dataSource = self
    }
}

extension PickerInputView: UIPickerViewDelegate, UIPickerViewDataSource
{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return buildings.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return buildings[row].name
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        textfield?.text = buildings[row].name
        self.currentBuilding = buildings[row]
    }
    
}


class TextfieldAccessory: UIToolbar
{
    init() {
        super.init(frame: .zero)
        self.barStyle = .default
        self.isTranslucent = true
        tintColor = UIColor(red: 76/255, green: 217/255, blue: 100/255, alpha: 1)
        sizeToFit()
    }
    
    func addTarget(_ target: Any?, selector: Selector)
    {
        let spaceButton = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let done = UIBarButtonItem(barButtonSystemItem: .done, target: target, action: selector)
        
        self.setItems([spaceButton, done], animated: false)
        
    }
    
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
