//
//  BMI.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Ryan Henzell-Hill on 18/06/2023.
//  Copyright © 2023 App Brewery. All rights reserved.
//

import UIKit

struct BMI {
    let value: Float
    let advice: String
    let colour: UIColor
    
    func getValue() -> Float {
        return value
    }
    
    func getAdvice() -> String {
        return advice
    }
    
    func getColour() -> UIColor {
        return colour
    }
}
