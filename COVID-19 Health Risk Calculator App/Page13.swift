//
//  Page13.swift
//  COVID-19 Health Risk Calculator App
//
//  Created by Jordan Yee on 3/08/22.
//

import SwiftUI

class Page13: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        CalculateButton.isHidden = true
    }
    @IBOutlet weak var CalculateButton: UIButton!
    
    @IBOutlet weak var ProgressBar: UIProgressView!
    
    @IBOutlet weak var YesButton: UIButton!
    
    @IBOutlet weak var NoButton: UIButton!
    
    @IBAction func SelectYes(_ sender: Any) {
        user_health_risk *= previous_infection_status.yes
        user_profile.previous_infection = "Yes"
        
        if health_conditions_counter >= 4 {
            user_health_risk *= health_conditions._4plus_conditions
        }
        
        if user_health_risk >= 100 {
            user_health_risk = 99.99
        }
        
        user_health_risk = round(user_health_risk * 100)/100
        
        YesButton.tintColor = .systemBlue
        
        ProgressBar.progress = 1
        
        CalculateButton.isHidden = false
    }
    
    @IBAction func SelectNo(_ sender: Any) {
        user_health_risk *= previous_infection_status.no
        user_profile.previous_infection = "No"
        
        if health_conditions_counter >= 4 {
            user_health_risk *= health_conditions._4plus_conditions
        }
        
        if user_health_risk >= 100 {
            user_health_risk = 99.99
        }
        
        user_health_risk = round(user_health_risk * 100)/100
        
        NoButton.tintColor = .systemBlue
        
        ProgressBar.progress = 1
        
        CalculateButton.isHidden = false
    }
    
    @IBAction func Calculate(_ sender: Any) {
        DispatchQueue.main.asyncAfter(deadline:.now() + 0.25, execute: {
            self.performSegue(withIdentifier:"Summary",sender: nil)
        })
    }
}
