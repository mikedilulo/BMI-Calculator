//
//  SecondViewController.swift
//  bmi-calculator
//
//  Created by Mike Di’ Lulo on 4/27/20.
//  Copyright © 2020 Mike Di’ Lulo. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var bmiValue = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //create label programmatically
        let label = UILabel()
        label.text = bmiValue
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        view.addSubview(label)
    }
}
