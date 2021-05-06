//
//  ViewController.swift
//  BMICalculator
//
//  Created by 太田都寿 on 2021/05/05.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var bmiLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func calculationBtnAction(_ sender: Any) {
        guard let doubleH = Double(heightTextField.text!) else {
            return
        }
        guard let doubleW = Double(weightTextField.text!) else {
            return
        }
        bmiLabel.text = calculation(height: doubleH, weight: doubleW)
    }
    
    func calculation(height: Double, weight: Double) -> String {
        let h = height / 100
        let w = weight
        var result = w / (h * h)
        result = floor(result * 10) / 10
        return result.description
    }
}

