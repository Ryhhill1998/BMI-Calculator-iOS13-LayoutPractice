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
    var bmiAdvice: String = ""
    var bmiColour: UIColor = UIColor {_ in return #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)}

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = "\(bmiValue)"
        adviceLabel.text = bmiAdvice
        backgroundImageView.backgroundColor = bmiColour
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
}
