//
//  SwiftUIView.swift
//  COVID-19 Health Risk Calculator App
//
//  Created by Jordan Yee on 29/07/22.
//

import UIKit

var ages : [String] = []
let starting_user_health_risk = national_average_health_risk

class Page2: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        AgePicker.delegate = self
        AgePicker.dataSource = self
        
        for i in 0...120 {
            ages.append(String(i))
        }
        
        ContinueButton.tintColor = .systemGray2
    }
    
    @IBOutlet weak var ProgressBar: UIProgressView!
    
    @IBOutlet weak var AgePicker: UIPickerView!
    
    @IBOutlet weak var ContinueButton: UIButton!
    
    @IBAction func Continue(_ sender: Any) {
        if user_profile.age != 0 {
            ProgressBar.progress = 0.1538461538
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.25, execute: {self.performSegue(withIdentifier: "Page 3", sender: nil)})
        }
    }
}

extension Page2: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 121
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return ages[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        user_profile.age = Int(ages[row])!
        user_health_risk = starting_user_health_risk
        if user_profile.age == 0 {
            ContinueButton.tintColor = .systemGray2
        } else {
            switch user_profile.age {
            case 0:
                return
            case 1...9:
                user_health_risk *= age._0to9
                ContinueButton.tintColor = .systemBlue
            case 10...19:
                user_health_risk *= age._10to19
                ContinueButton.tintColor = .systemBlue
            case 20...29:
                user_health_risk *= age._20to29
                ContinueButton.tintColor = .systemBlue
            case 30...39:
                user_health_risk *= age._30to39
                ContinueButton.tintColor = .systemBlue
            case 40...49:
                user_health_risk *= age._40to49
                ContinueButton.tintColor = .systemBlue
            case 50...59:
                user_health_risk *= age._50to59
                ContinueButton.tintColor = .systemBlue
            case 60...69:
                user_health_risk *= age._60to69
                ContinueButton.tintColor = .systemBlue
            case 70...120:
                user_health_risk *= age._70plus
                ContinueButton.tintColor = .systemBlue
            default:
                return
            }
        }
    }
}
