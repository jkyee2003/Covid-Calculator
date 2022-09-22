//
//  ViewController.swift
//  COVID-19 Health Risk Calculator App
//
//  Created by Jordan Yee on 27/07/22.
//

import UIKit

var agreementStatus = false

class Welcome: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        StartCalculatingButton.tintColor = .systemGray2
    }
    
    @IBOutlet weak var AgreeButton: UIButton!
    
    @IBOutlet weak var StartCalculatingButton: UIButton!
    
    @IBOutlet weak var AgreeMessage: UILabel!
    
    @IBAction func StartCalculating(_ sender: Any) {
        if agreementStatus == true {
            performSegue(withIdentifier: "To Page 1", sender: nil)
        } else {
            AgreeMessage.textColor = .gray
        }
    }
    
    @IBAction func AgreeButtonClick(_ sender: Any) {
        if agreementStatus == false {
            AgreeButton.setImage(UIImage(systemName: "checkmark.square"), for: .normal)
            StartCalculatingButton.tintColor = .systemBlue
            agreementStatus = true
        } else {
            AgreeButton.setImage(UIImage(systemName: "square"), for: .normal)
            StartCalculatingButton.tintColor = .systemGray2
            agreementStatus = false
        }
        }
}
