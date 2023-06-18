//
//  ViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    @IBOutlet weak var heightValueLabel: UILabel!
    @IBOutlet weak var weightValueLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var bmi: Float = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func sliderDragged(_ sender: UISlider) {
        let updatedValue = sender.value
        
        if sender == heightSlider {
            heightValueLabel.text = "\(roundHeight(height: updatedValue))m"
        } else {
            weightValueLabel.text = "\(Int(updatedValue))Kg"
        }
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = roundHeight(height: heightSlider.value)
        let weight = Float(Int(weightSlider.value))
        
        bmi = round(weight / pow(height, 2) * 10) / 10
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    func roundHeight(height: Float) -> Float {
        return round(height * 100) / 100
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = bmi
        }
    }
}

