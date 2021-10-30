//
//  CalculateBrain.swift
//  BMI Calculator
//
//  Created by  Mr.Ki on 30.10.2021.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import Foundation


struct CalculateBrain {

    var bmi: BMI?
    
    func getBmiValue() -> String {
        
        let bmiTodesimal = String(format: "%.1f", bmi?.value ?? 0.0)
            return bmiTodesimal
        
    }
    
 
        
       
    
   mutating func calculateBmi(height: Float, weight: Float) {
    let bmivalue = weight / (height * height)
  
    
    if bmivalue < 18.5 {
        print("underweight")
        bmi = BMI(value: bmivalue, advice: "Eat more snacks", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
    } else if bmivalue < 24.9 {
        print("normal")
        bmi = BMI(value: bmivalue, advice: "All right", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
    } else {
        print("overveight")
        bmi = BMI(value: bmivalue, advice: "Eat less cookies", color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
    
    }
    
    }
    
}
