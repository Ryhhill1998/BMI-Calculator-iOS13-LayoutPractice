//
//  ViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var heightValueLabel: UILabel!
    @IBOutlet weak var weightValueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func sliderDragged(_ sender: UISlider) {
        let updatedValue = sender.value
        
        if sender == heightSlider {
            heightValueLabel.text = "\(round(updatedValue * 100) / 100)m"
        } else {
            weightValueLabel.text = "\(Int(updatedValue))kg"
        }
    }
}

