//
//  CerebroCalculadora.swift
//  CalculadoraIMCcfe
//
//  Created by marco rodriguez on 04/08/22.
//

import Foundation
import UIKit
/*
 IMC    Nivel de peso
 Por debajo de 18.5    Bajo peso
 18.5—24.9    Normal
 25.0—29.9    Sobrepeso
 30.0 o más    Obeso
 */

struct CerebroCalculadora {
    var imc: AtributoIMC
    
    var nombre: String?
    
    
    mutating func calcularIMC(peso: Float, altura: Float){
        let alturaEnMts = altura / 100
        let valorIMC = peso / (alturaEnMts * alturaEnMts)
        
        if valorIMC < 18.5 {
            imc = AtributoIMC(valor: valorIMC, aviso: "Tu indice es muy bajo, trata de comer mas frutas y verduras", color: UIColor.yellow, imagen: UIImage(named: "imc")!)
        } else if valorIMC < 24.9 {
            imc = AtributoIMC(valor: valorIMC, aviso: "Felicidades tu IMC esta en un rango normal sigue comiendo asi!", color: UIColor.green, imagen: UIImage(named: "imc")!)
        } else if valorIMC < 29.9 {
            imc = AtributoIMC(valor: valorIMC, aviso: "Alerta, tu IMC es elevado por lo que tienes principios de obesidad, cuida tu alimentacion    ", color: UIColor.orange, imagen: UIImage(named: "imc")!)
        } else {
            imc = AtributoIMC(valor: valorIMC, aviso: "Alerta tienes obesidad Extrema! bajale a la comida chatarra", color: UIColor.red, imagen: UIImage(named: "imc")!)
        }
    }
    
    func retornarValorIMC() -> Float {
        return imc.valor
    }
    
    func darAviso() -> String {
        return imc.aviso
    }
    
    func retornarColor() -> UIColor {
        return imc.color
    }
    
    func retornarImagen() -> UIImage {
        return imc.imagen
    }
    
}
