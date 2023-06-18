//
//  ResultViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Ryan Henzell-Hill on 18/06/2023.
//  Copyright © 2023 App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: String?
    var bmiAdvice: String?
    var bmiColour: UIColor?

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = bmiValue
        adviceLabel.text = bmiAdvice
        backgroundImageView.backgroundColor = bmiColour
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
}
