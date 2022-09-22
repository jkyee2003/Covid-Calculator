//
//  Page4.swift
//  COVID-19 Health Risk Calculator App
//
//  Created by Jordan Yee on 1/08/22.
//

import UIKit

class Page4 : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var ProgressBar: UIProgressView!
    
    @IBOutlet weak var WhiteEuropeanButton: UIButton!
    
    @IBOutlet weak var MaōriButton: UIButton!
    
    @IBOutlet weak var PasifikaButton: UIButton!
    
    @IBOutlet weak var AsianButton: UIButton!
    
    @IBOutlet weak var MiddleEasternButton: UIButton!
    
    @IBOutlet weak var AfricanButton: UIButton!
    
    @IBOutlet weak var LatinAmericanButton: UIButton!
    
    @IBAction func SelectWhiteEuropean(_ sender: Any) {
        user_health_risk *= ethnicity.WhiteEuropean
        user_profile.ethnicity = "White European"
        
        WhiteEuropeanButton.tintColor = .systemBlue
        
        ProgressBar.progress = 0.3076923077
        
        DispatchQueue.main.asyncAfter(deadline:.now() + 0.25, execute: {
           self.performSegue(withIdentifier:"Page 5",sender: nil)
        })
    }
    
    @IBAction func SelectMaōri(_ sender: Any) {
        user_health_risk *= ethnicity.Maōri
        user_profile.ethnicity = "Maōri"
        
        MaōriButton.tintColor = .systemBlue
        
        ProgressBar.progress = 0.3076923077
            
        DispatchQueue.main.asyncAfter(deadline:.now() + 0.25, execute: {
            self.performSegue(withIdentifier:"Page 5",sender: nil)
        })
    }
    
    @IBAction func SelectPasifika(_ sender: Any) {
        user_health_risk *= ethnicity.Pasifika
        user_profile.ethnicity = "Pasifika"
        
        PasifikaButton.tintColor = .systemBlue
        
        ProgressBar.progress = 0.3076923077
        
        DispatchQueue.main.asyncAfter(deadline:.now() + 0.25, execute: {
           self.performSegue(withIdentifier:"Page 5",sender: nil)
        })
    }
    
    @IBAction func SelectAsian(_ sender: Any) {
        user_health_risk *= ethnicity.Asian
        user_profile.ethnicity = "Asian"
        
        AsianButton.tintColor = .systemBlue
        
        ProgressBar.progress = 0.3076923077
        
        DispatchQueue.main.asyncAfter(deadline:.now() + 0.25, execute: {
           self.performSegue(withIdentifier:"Page 5",sender: nil)
        })
    }
    
    @IBAction func SelectMiddleEastern(_ sender: Any) {
        user_health_risk *= ethnicity.MEELAA
        user_profile.ethnicity = "Middle Eastern"
        
        MiddleEasternButton.tintColor = .systemBlue
        
        ProgressBar.progress = 0.3076923077
        
        DispatchQueue.main.asyncAfter(deadline:.now() + 0.25, execute: {
           self.performSegue(withIdentifier:"Page 5",sender: nil)
        })
    }
    
    @IBAction func SelectAfrican(_ sender: Any) {
        user_health_risk *= ethnicity.MEELAA
        user_profile.ethnicity = "African"
        
        AfricanButton.tintColor = .systemBlue
        
        ProgressBar.progress = 0.3076923077
        
        DispatchQueue.main.asyncAfter(deadline:.now() + 0.25, execute: {
           self.performSegue(withIdentifier:"Page 5",sender: nil)
        })
    }
    
    @IBAction func SelectLatinAmerican(_ sender: Any) {
        user_health_risk *= ethnicity.MEELAA
        user_profile.ethnicity = "Latin American"
        
        LatinAmericanButton.tintColor = .systemBlue
        
        ProgressBar.progress = 0.3076923077
            
        DispatchQueue.main.asyncAfter(deadline:.now() + 0.25, execute: {
            self.performSegue(withIdentifier:"Page 5",sender: nil)
        })
    }
}
