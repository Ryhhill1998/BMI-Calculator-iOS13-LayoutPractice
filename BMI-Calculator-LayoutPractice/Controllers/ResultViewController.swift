//
//  ResultViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Ryan Henzell-Hill on 18/06/2023.
//  Copyright © 2023 App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: Float = 0.0

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = "\(bmiValue)"
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
}
