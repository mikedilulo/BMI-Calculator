//
//  ResultsViewController.swift
//  bmi-calculator
//
//  Created by Mike Di’ Lulo on 5/2/20.
//  Copyright © 2020 Mike Di’ Lulo. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    // optional string because we do not know what the value will be, once calculated we will pass it over
    var bmiValue: String?

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        bmiLabel.text = bmiValue
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        //tap into method that coems from UI View Controller
        //transition happens in automated way
        // completion set to nil because nothing happens after we dismiss it, go back to previus screen
        self.dismiss(animated: true, completion: nil)
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
