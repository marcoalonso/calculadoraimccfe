//
//  CalculoIMCViewController.swift
//  CalculadoraIMCcfe
//
//  Created by marco rodriguez on 04/08/22.
//

import UIKit

class CalculoIMCViewController: UIViewController {

    @IBOutlet weak var pesoLabel: UILabel!
    @IBOutlet weak var pesoSlider: UISlider!
    @IBOutlet weak var alturaSlider: UISlider!
    @IBOutlet weak var alturaLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func pesoSliderChanged(_ sender: UISlider) {
        print(sender.value)
        pesoLabel.text = " \(String(sender.value)) Kg."
        
    }
    
    @IBAction func alturaSliderChanged(_ sender: UISlider) {
        print(sender.value)
        alturaLabel.text = " \(String(sender.value)) cms."
    }
    

}
