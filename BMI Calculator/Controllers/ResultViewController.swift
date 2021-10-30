//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by  Mr.Ki on 30.10.2021.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: String?
    
    
    @IBOutlet weak var bmiLabel: UILabel!
    
    @IBOutlet weak var advicelabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = String(bmiValue!)
      
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
