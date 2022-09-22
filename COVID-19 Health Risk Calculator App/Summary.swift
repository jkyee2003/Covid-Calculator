//
//  Summary.swift
//  COVID-19 Health Risk Calculator App
//
//  Created by Jordan Yee on 10/08/22.
//

import UIKit
import SwiftUI

class Summary: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        HealthRiskScore.text = "\(user_health_risk)%"
        
        if user_health_risk > national_average_health_risk {
            HealthRiskExplanation.text = "According to the information you have provided, your risk of hospitalisation from COVID-19 infection is \(user_health_risk)%. This is higher than the national average of 0.9845%."
        } else if user_health_risk < national_average_health_risk{
            HealthRiskExplanation.text = "According to the information you have provided, your risk of hospitalisation from COVID-19 infection is \(user_health_risk)%. This is lower than the national average of 0.9845%."
        } else {
            HealthRiskExplanation.text = "According to the information you have provided, your risk of hospitalisation from COVID-19 infection is \(user_health_risk)%. This is equal to the national average of 0.9845%."
        }
        
        display_user_profile()
        
        display_risk_with_rolling_animation()
    }
    
    @IBOutlet weak var HealthRiskScore: UILabel!
    
    @IBOutlet weak var HealthRiskExplanation:
    UILabel!
    
    @IBOutlet weak var HealthProfileTitle: UILabel!
    
    @IBOutlet weak var Age: UILabel!
    
    @IBOutlet weak var Sex: UILabel!
    
    @IBOutlet weak var Ethnicity: UILabel!
    
    @IBOutlet weak var VaccinationStatus: UILabel!
    
    @IBOutlet weak var UnderlyingConditions: UILabel!
    
    @IBOutlet weak var PreviousInfectionStatus: UILabel!
    
    func display_user_profile() {
        HealthProfileTitle.text = "\(user_profile.name.uppercased())'S HEALTH PROFILE"
        Age.text = "Age: \(user_profile.age)"
        Sex.text = "Sex: \(user_profile.sex)"
        Ethnicity.text = "Ethnicity: \(user_profile.ethnicity)"
        VaccinationStatus.text = "Vaccination Status: \(user_profile.vaccination_status)"
        
        UnderlyingConditions.text = "Underlying Conditions: \(health_conditions_counter)"
        
        PreviousInfectionStatus.text = "Previous Infection Status: \(user_profile.previous_infection)"
    }
    
    func display_risk_with_rolling_animation() {
        let risk = Int(user_health_risk * 100)
        var displayed_risk: Double = 0
        let animation_duration = 1000
        let steps = min(risk, 100)
        let step_duration = animation_duration / steps
        
        displayed_risk += Double(risk % steps) / 100
        
        for step in 0..<steps {
            let update_time_interval = DispatchTimeInterval.milliseconds(step * step_duration)
            let deadline = DispatchTime.now() + update_time_interval
                            // tell dispatch queue to run task after the deadline
            DispatchQueue.main.asyncAfter(deadline: deadline) {
                            // Add piece of the entire entered number to our total
            displayed_risk += (Double(risk / steps) / 100)
                self.HealthRiskScore.text = "\(round(displayed_risk * 100) / 100)%"
            print(displayed_risk)
            }
        }
    }
}
