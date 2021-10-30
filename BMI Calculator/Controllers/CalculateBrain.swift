//
//  CalculateBrain.swift
//  BMI Calculator
//
//  Created by  Mr.Ki on 30.10.2021.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import Foundation


struct CalculateBrain {

    var bmi: Float = 0.0
    
    func getBmiValue() -> String {
        let bmiTodesimal = String(format: "%.1f", bmi)
        return bmiTodesimal
        
    }
    
    
    
   mutating func calculateBmi(height: Float, weight: Float) {
        bmi = weight / (height * height)
    }
    
}
