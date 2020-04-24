//
//  ViewController.swift
//  bmi-calculator
//
//  Created by Mike Di’ Lulo on 4/21/20.
//  Copyright © 2020 Mike Di’ Lulo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
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
        let bmi = weight / pow(height, 2)
        print(bmi)
    }
    
}

