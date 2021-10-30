//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var calculateBrain = CalculateBrain()
    
    
    
    @IBOutlet weak var heightLabel: UILabel!
    
    @IBOutlet weak var weightLabel: UILabel!
    
    
    @IBOutlet weak var heightSliderOutlet: UISlider!
    
    @IBOutlet weak var weightSliderOutlet: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.weightSliderOutlet.value = 100
        self.heightSliderOutlet.value = heightSliderOutlet.maximumValue / 2
        
        
    }

    @IBAction func heightSlider(_ sender: UISlider) {
        print(sender.value)
        heightLabel.text = String(format: "%.2f", sender.value) + "m"
    }
    
    

    @IBAction func weightSlider(_ sender: UISlider) {
        print(sender.value)
        weightLabel.text = String(format: "%.0f", sender.value) + "kg"
    }
    
    @IBAction func calculateButton(_ sender: UIButton) {
        
        let height = heightSliderOutlet.value
        let weight = weightSliderOutlet.value
//        let bmi = weight / (height * height)
//        print(bmi)
//        bmiValue = String(format: "%.1f", bmi)
        
        calculateBrain.calculateBmi(height: height, weight: weight)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculateBrain.getBmiValue()
            
        }
    }
    
    
}

