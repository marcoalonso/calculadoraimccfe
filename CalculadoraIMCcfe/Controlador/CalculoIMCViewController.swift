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
    
    var cerebro = CerebroCalculadora()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        pesoLabel.text = " \(String(format: "%.1f", pesoSlider.value)) Kg."
        alturaLabel.text = " \(String(format: "%.1f", alturaSlider.value )) cms."
        
    }
    
    @IBAction func pesoSliderChanged(_ sender: UISlider) {
        print(sender.value)
        pesoLabel.text = " \(String(format: "%.2f", sender.value)) Kg."
        
    }
    
    @IBAction func alturaSliderChanged(_ sender: UISlider) {
        print(sender.value)
        alturaLabel.text = " \(String(format: "%.2f", sender.value)) cms."
    }
    
    
    @IBAction func calcularBtn(_ sender: UIButton) {
        //Obtener el valor del imc
        cerebro.calcularIMC(peso: pesoSlider.value, altura: alturaSlider.value)
        
        //Si hay un segue "calcular", lo utilizamos para navegar
        performSegue(withIdentifier: "calcular", sender: self)
    }
    
    
    //metodo complementario para mandar parametros de una VC a otro
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "calcular" {
            let objDestino = segue.destination as! ResultadoViewController
            //acceder a los atributos de ResultadoViewController
            objDestino.valorIMC = cerebro.retornarValorIMC()
            objDestino.aviso = cerebro.darAviso()
            objDestino.imageIMC = cerebro.retornarImagen()
            objDestino.colorIMC = cerebro.retornarColor()
        }
    }
    
}
