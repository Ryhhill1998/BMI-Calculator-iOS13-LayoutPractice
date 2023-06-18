//
//  CalculatorBrain.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Ryan Henzell-Hill on 18/06/2023.
//  Copyright © 2023 App Brewery. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    var bmi: Float? = nil
    
    mutating func calculateBmi(height: Float, weight: Float) {
        bmi = round(weight / pow(height, 2) * 10) / 10
    }
    
    func getBmiValue() -> Float {
        guard let bmiValue = bmi else { return 0.0 }
        return bmiValue
    }
}
