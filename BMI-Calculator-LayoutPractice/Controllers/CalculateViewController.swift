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
    
    var calculatorBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func sliderDragged(_ sender: UISlider) {
        let updatedValue = sender.value
        
        if sender == heightSlider {
            heightValueLabel.text = "\(round(updatedValue * 100) / 100)m"
        } else {
            weightValueLabel.text = "\(Int(updatedValue))Kg"
        }
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = round(heightSlider.value * 100) / 100
        let weight = Float(Int(weightSlider.value))
        
        calculatorBrain.calculateBmi(height: height, weight: weight)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBmiValue()
            destinationVC.bmiAdvice = calculatorBrain.getBmiAdvice()
            destinationVC.bmiColour = calculatorBrain.getBmiColour()
        }
    }
}

