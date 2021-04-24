//
//  CalculatorViewController.swift
//  Course2Week3Task1
//
//  Copyright © 2018 e-Legion. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var labelResult: UILabel!
    @IBOutlet weak var labelFO: UILabel!
    @IBOutlet weak var stepperFO: UIStepper!
    @IBOutlet weak var labelSO: UILabel!
    @IBOutlet weak var sliderSO: UISlider!
    
    
    override func viewDidLoad() {
        
        let numberFormatter = NumberFormatter ()
        numberFormatter.minimumFractionDigits = 4
        numberFormatter.maximumFractionDigits = 4
        
        stepperFO.layer.borderColor = UIColor(named: "controlsColor")?.cgColor
        stepperFO.layer.borderWidth = 1.5
        stepperFO.layer.cornerRadius = 5
        stepperFO.setDecrementImage(stepperFO.decrementImage(for: .normal), for: .normal)
        stepperFO.setIncrementImage(stepperFO.incrementImage(for: .normal), for: .normal)
        stepperFO.tintColor = UIColor(named: "controlsColor")
        
        stepperFO.minimumValue = 1
        stepperFO.maximumValue = 10
        stepperFO.stepValue = 0.5
        stepperFO.value = 1
        
        labelFO.text = numberFormatter.string(from: NSNumber(value: stepperFO.value))
        
        sliderSO.minimumValue = 1
        sliderSO.maximumValue = 100
        sliderSO.value = 1
        
        labelSO.text = numberFormatter.string(from: NSNumber(value: sliderSO.value))
        
        super.viewDidLoad()
    }
    
    
    @IBAction func stepperFOChanged(_ sender: UIStepper) {
        let numberFormatter = NumberFormatter ()
        numberFormatter.minimumFractionDigits = 4
        numberFormatter.maximumFractionDigits = 4
        
        labelFO.text = numberFormatter.string(from: NSNumber(value: sender.value))
    }
    
    @IBAction func sliderSOChanged(_ sender: UISlider) {
        let numberFormatter = NumberFormatter ()
        numberFormatter.minimumFractionDigits = 4
        numberFormatter.maximumFractionDigits = 4
        
        labelSO.text = numberFormatter.string(from: NSNumber(value: sender.value))
    }
    
    @IBAction func calculate(_ sender: UIButton) {
        
        let result = Float (stepperFO.value) * sliderSO.value
        
        let numberFormatter = NumberFormatter ()
        numberFormatter.minimumFractionDigits = 0
        numberFormatter.maximumFractionDigits = 4
        
        labelResult.text = numberFormatter.string(from: NSNumber(value: result))
    }
    
}
