//
//  Page3.swift
//  COVID-19 Health Risk Calculator App
//
//  Created by Jordan Yee on 1/08/22.
//

import UIKit

class Page3: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var ProgressBar: UIProgressView!
    
    @IBOutlet weak var MaleButton: UIButton!
    
    @IBOutlet weak var FemaleButton: UIButton!
    
    @IBAction func SelectMale(_ sender: Any) {
        user_health_risk *= sex.male
        user_profile.sex = "Male"
        
        MaleButton.tintColor = .systemBlue
        
        ProgressBar.progress = 0.2307692308
        
        DispatchQueue.main.asyncAfter(deadline:.now() + 0.25, execute: {
           self.performSegue(withIdentifier:"Page 4",sender: nil)
        })
    }
    
    @IBAction func SelectFemale(_ sender: Any) {
        user_health_risk *= sex.female
        user_profile.sex = "Female"

        FemaleButton.tintColor = .systemBlue
        
        ProgressBar.progress = 0.2307692308
        
        DispatchQueue.main.asyncAfter(deadline:.now() + 0.25, execute: {
           self.performSegue(withIdentifier:"Page 4",sender: nil)
        })
    }
    
}
