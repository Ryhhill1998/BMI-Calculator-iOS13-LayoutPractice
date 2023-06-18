//
//  SecondViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Ryan Henzell-Hill on 18/06/2023.
//  Copyright © 2023 App Brewery. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var bmi = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        
        let label = UILabel()
        label.text = bmi
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        view.addSubview(label)
    }
}

