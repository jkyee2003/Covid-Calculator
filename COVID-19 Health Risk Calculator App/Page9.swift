//
//  Page9.swift
//  COVID-19 Health Risk Calculator App
//
//  Created by Jordan Yee on 2/08/22.
//

import SwiftUI

class Page9: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var ProgressBar: UIProgressView!
    
    @IBOutlet weak var YesButton: UIButton!
    
    @IBOutlet weak var NoButton: UIButton!
    
    @IBAction func SelectYes(_ sender: Any) {
        user_health_risk *= health_conditions.chronic_kidney_disease
        user_profile.health_conditions.append("Chronic Kidney Disease")
        health_conditions_counter += 1
        
        YesButton.tintColor = .systemBlue
        
        ProgressBar.progress = 0.6923076923
        
        DispatchQueue.main.asyncAfter(deadline:.now() + 0.25, execute: {
            self.performSegue(withIdentifier:"Page 10",sender: nil)
        })
    }
    
    @IBAction func SelectNo(_ sender: Any) {
        NoButton.tintColor = .systemBlue
        
        ProgressBar.progress = 0.6923076923
        
        DispatchQueue.main.asyncAfter(deadline:.now() + 0.25, execute: {
            self.performSegue(withIdentifier:"Page 10",sender: nil)
        })
    }
}
