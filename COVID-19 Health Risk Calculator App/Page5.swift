//
//  Page5.swift
//  COVID-19 Health Risk Calculator App
//
//  Created by Jordan Yee on 1/08/22.
//

import UIKit

class Page5: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var ProgressBar: UIProgressView!
    
    @IBOutlet weak var FullyVaccinatedButton: UIButton!
    
    @IBOutlet weak var PartiallyVaccinatedButton: UIButton!
    
    @IBOutlet weak var UnvaccinatedButton: UIButton!
    
    @IBAction func SelectFullyVaccinated(_ sender: Any) {
        user_health_risk *= vaccination_status.fully_vaccinated
        user_profile.vaccination_status = "Fully Vaccinated"
        
        FullyVaccinatedButton.tintColor = .systemBlue
        
        ProgressBar.progress = 0.3846153846
            
        DispatchQueue.main.asyncAfter(deadline:.now() + 0.25, execute: {
            self.performSegue(withIdentifier:"Page 6",sender: nil)
        })
    }
    
    @IBAction func SelectPartiallyVaccinated(_ sender: Any) {
        user_health_risk *= vaccination_status.partially_vaccinated
        user_profile.vaccination_status = "Partially Vaccinated"
        
        PartiallyVaccinatedButton.tintColor = .systemBlue
        
        ProgressBar.progress = 0.3846153846
                
        DispatchQueue.main.asyncAfter(deadline:.now() + 0.25, execute: {
            self.performSegue(withIdentifier:"Page 6",sender: nil)
        })
    }
    
    @IBAction func SelectUnvaccinated(_ sender: Any) {
        user_health_risk *= vaccination_status.unvaccinated
        user_profile.vaccination_status = "Unvaccinated"
        
        UnvaccinatedButton.tintColor = .systemBlue
        
        ProgressBar.progress = 0.3846153846
                
        DispatchQueue.main.asyncAfter(deadline:.now() + 0.25, execute: {
            self.performSegue(withIdentifier:"Page 6",sender: nil)
        })
    }
}
