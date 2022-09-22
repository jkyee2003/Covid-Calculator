//
//  Page8.swift
//  COVID-19 Health Risk Calculator App
//
//  Created by Jordan Yee on 2/08/22.
//

import UIKit

class Page8: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var ProgressBar: UIProgressView!
    
    @IBOutlet weak var YesButton: UIButton!
    
    @IBOutlet weak var NoButton: UIButton!
    
    @IBAction func SelectYes(_ sender: Any) {
        user_health_risk *= health_conditions.liver_disease
        user_profile.health_conditions.append("Liver Disease")
        health_conditions_counter += 1
        
        YesButton.tintColor = .systemBlue
        
        ProgressBar.progress = 0.6153846154
        
        DispatchQueue.main.asyncAfter(deadline:.now() + 0.25, execute: {
            self.performSegue(withIdentifier:"Page 9",sender: nil)
        })
    }
    
    @IBAction func SelectNo(_ sender: Any) {
        NoButton.tintColor = .systemBlue
        
        ProgressBar.progress = 0.6153846154
        
        DispatchQueue.main.asyncAfter(deadline:.now() + 0.25, execute: {
            self.performSegue(withIdentifier:"Page 9",sender: nil)
        })
    }
}
