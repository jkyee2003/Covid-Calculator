//
//  Page 1.swift
//  COVID-19 Health Risk Calculator App
//
//  Created by Jordan Yee on 28/07/22.
//

import UIKit
import SwiftUI

var is_blank = true

class Page1: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ContinueButton.tintColor = .systemGray2
    }
    
    @IBOutlet weak var ProgressBar: UIProgressView!
    
    @IBOutlet weak var UserName: UITextField!
    
    @IBOutlet weak var ContinueButton: UIButton!
    
    @IBAction func CheckBlank(_ sender: Any) {
        let string = UserName.text
        
        is_blank = true
        
        if string != "" {
            for character in string! {
                if character == " " {
                    
                } else {
                    is_blank = false
                }
            }
        }
        if UserName.text!.isEmpty || is_blank == true {
            ContinueButton.tintColor = .systemGray2
        } else {
            ContinueButton.tintColor = .systemBlue
        }
    }
    
    @IBAction func Continue(_ sender: Any) {
        user_profile.name = UserName.text!
        
        if UserName.text!.isEmpty || is_blank == true {
            return
        } else {
            ProgressBar.progress = 0.07692307692
            DispatchQueue.main.asyncAfter(deadline:.now() + 0.25, execute: {
                self.performSegue(withIdentifier: "To Page 2", sender: nil)
            })
        }
    }
}
