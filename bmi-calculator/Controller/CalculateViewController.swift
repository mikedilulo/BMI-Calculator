//
//  ViewController.swift
//  bmi-calculator
//
//  Created by Mike Di’ Lulo on 4/21/20.
//  Copyright © 2020 Mike Di’ Lulo. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var bmiValue = "0.0"
    
    @IBOutlet weak var heightOutlet: UILabel!
    @IBOutlet weak var weightOutlet: UILabel!
    
    @IBOutlet weak var sliderOutlet: UISlider!
    @IBOutlet weak var weightSliderOutlet: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func sliderValueAction(_ sender: UISlider) {
        let heightCurrentValue = String(format: "%.2f", sender.value)
        heightOutlet.text = "\(heightCurrentValue)m"
    }
    
    @IBAction func weightSliderValue(_ sender: UISlider) {
        let weightCurrentValue = String(format: "%.0f", sender.value)
        weightOutlet.text = "\(weightCurrentValue)kg"
    }
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        let height = sliderOutlet.value
        let weight = weightSliderOutlet.value
        
        
        // pow is used for exponents
//        let bmi = weight / pow(height, 2)
        let bmi = weight / (height * weight)
        bmiValue = String(format: "%.1f", bmi)
        
        
        self.performSegue(withIdentifier: "goToResults", sender: self)

    }
    // segue will intitalize a box style view controller. our job to specify the type. Using as keyword we are performing downcasting
    // cast it down to the result view controller by writing the keyword as
    // ! means that it is a forced downcast
    // ResultsviewController gets created
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults" {
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.bmiValue = bmiValue
            
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    
}

