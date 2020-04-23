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
    @IBOutlet weak var sliderOutlet: UISlider!
    @IBOutlet weak var weightOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func sliderValueAction(_ sender: UISlider) {
        let heightCurrentValue = Int(sender.value)
        heightOutlet.text = "\(heightCurrentValue)"
    }
    
    @IBAction func weightSliderValue(_ sender: UISlider) {
    }
    

}

