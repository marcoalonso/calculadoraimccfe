//
//  ResultadoViewController.swift
//  CalculadoraIMCcfe
//
//  Created by marco rodriguez on 04/08/22.
//

import UIKit



class ResultadoViewController: UIViewController {
    
    // MARK: - Variables para recibir informacion
    var valorIMC: String?
    var aviso: String?
    var colorIMC: UIColor?
    var imageIMC: UIImage?
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var resultadoIMCLabel: UILabel!
    @IBOutlet weak var imagenIMCImageView: UIImageView!
    @IBOutlet weak var avisoLabel: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    func setupUI(){
        resultadoIMCLabel.text = "Resultado: \(valorIMC ?? "0.0")"
        avisoLabel.text = aviso ?? ""
        imagenIMCImageView.image = imageIMC ?? UIImage(named: "imc")
        //color de label
        resultadoIMCLabel.textColor = colorIMC ?? UIColor.white
    }
    
    
    // MARK: - Accion del boton calcular de nuevo
    
    @IBAction func calcularNuevoBtn(_ sender: UIButton) {
        //regresar a una pantalla atras
        navigationController?.popToRootViewController(animated: true)
    }
    
}
