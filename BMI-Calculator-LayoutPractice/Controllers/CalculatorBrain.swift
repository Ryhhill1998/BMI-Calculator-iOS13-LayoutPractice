//
//  CalculatorBrain.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Ryan Henzell-Hill on 18/06/2023.
//  Copyright © 2023 App Brewery. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    mutating func calculateBmi(height: Float, weight: Float) {
        let bmiValue = round(weight / pow(height, 2) * 10) / 10
        
        var bmiAdvice: String
        var bmiColour: UIColor
        
        switch bmiValue {
        case ...0:
            bmiAdvice = "BMI cannot be zero or negative!"
            bmiColour = UIColor {_ in return #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)}
        case 0..<18.5:
            bmiAdvice = "You are underweight"
            bmiColour = UIColor {_ in return #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)}
        case 18.5..<24.5:
            bmiAdvice = "You are a healthy weight"
            bmiColour = UIColor {_ in return #colorLiteral(red: 0.5568627451, green: 0.6745098039, blue: 0.3137254902, alpha: 1)}
        case 24.5..<29.5:
            bmiAdvice = "You are overweight"
            bmiColour = UIColor {_ in return #colorLiteral(red: 0.9490196078, green: 0.8039215686, blue: 0.3607843137, alpha: 1)}
        case 29.5..<39.5:
            bmiAdvice = "You are obese"
            bmiColour = UIColor {_ in return #colorLiteral(red: 1, green: 0.5176470588, blue: 0, alpha: 1)}
        default:
            bmiAdvice = "You are morbidly obese"
            bmiColour = UIColor {_ in return #colorLiteral(red: 0.9490196078, green: 0.2980392157, blue: 0.2392156863, alpha: 1)}
        }
        
        bmi = BMI(value: bmiValue, advice: bmiAdvice, colour: bmiColour)
    }
    
    func getBmiValue() -> Float {
        return bmi?.value ?? 0.0
    }
    
    func getBmiAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getBmiColour() -> UIColor {
        return bmi?.colour ?? UIColor {_ in return #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)}
    }
}
