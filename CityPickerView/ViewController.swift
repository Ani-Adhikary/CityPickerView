//
//  ViewController.swift
//  DropDownList
//
//  Created by Ani Adhikary on 17/12/17.
//  Copyright © 2017 Ani Adhikary. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var cityPickerView: UIPickerView!
    
    var cities = ["Amsterdam", "Ahmedabad", "Bengaluru", "Cupertino", "London", "SunnyVale", "Mumbai", "Santa Clara", "New York City"]
    var selectedCity = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func done(_ sender: UIButton) {
        cityLabel.text = selectedCity
    }
}

extension ViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }    
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return cities.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return cities[row]
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedCity = cities[row]
    }
}
