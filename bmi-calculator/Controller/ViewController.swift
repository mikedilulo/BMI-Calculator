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
        let heightCurrentValue = Int(sender.value)
        heightOutlet.text = "\(heightCurrentValue)m"
    }
    
    @IBAction func weightSliderValue(_ sender: UISlider) {
        let weightCurrentValue = Int(sender.value)
        weightOutlet.text = "\(weightCurrentValue)kg"
    }
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        let height = sliderOutlet.value
        let weight = weightSliderOutlet.value
        
        let bmi = Float(weight) / Float(height) * Float(height)
        print(bmi)
    }
    
}

