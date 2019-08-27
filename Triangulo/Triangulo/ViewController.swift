//
//  ViewController.swift
//  Triangulo
//
//  Created by Alumno on 8/19/19.
//  Copyright © 2019 Maggie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tfLado1: UITextField!
    @IBOutlet weak var tfLado2: UITextField!
    @IBOutlet weak var tfLado3: UITextField!
    @IBOutlet weak var imgTri: UIImageView!
    @IBOutlet weak var tfTipoDeTri: UITextField!
    @IBOutlet weak var swAreaoTipo: UISwitch!
    @IBOutlet weak var bBoton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bBoton.setTitle("Que tirangulo es?", for: .normal)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculaTri(_ sender: Any) {
        
        if let lado1 = Double(tfLado1.text!), let lado2 = Double(tfLado2.text!), let lado3 = Double(tfLado3.text!){
            print(checarSum(lado1: lado1, lado2: lado2, lado3: lado3))
            if(checarMenores(lado1: lado1, lado2: lado2, lado3: lado3) && checarSum(lado1: lado1, lado2: lado2, lado3: lado3)){
                
                if(swAreaoTipo.isOn){
                    tfTipoDeTri.text = "\(checarTipo(lado1: lado1, lado2: lado2, lado3: lado3))"
                    if(checarTipo(lado1: lado1, lado2: lado2, lado3: lado3) == "Equilatero"){
                        imgTri.image = UIImage(named: "equilatero")
                    }
                    else if (checarTipo(lado1: lado1, lado2: lado2, lado3: lado3) == "Isosceles"){
                        imgTri.image = UIImage(named: "isoceles")
                    }
                    else if (checarTipo(lado1: lado1, lado2: lado2, lado3: lado3) == "Escaleno"){
                        imgTri.image = UIImage(named: "escaleno")
                    }
                    
                    
                    
                }
                else{
                    let s = (lado1 + lado2 + lado3) / 2.0
                    
                    let area = (s*(s - lado1) + s*(lado2 - s) + s*(s - lado3)).squareRoot()
                    tfTipoDeTri.text = "\(area)"
                }
            }
            else{
                let alerta = UIAlertController(title: "Error", message: "Los datos proporcionados no son valores de un triangulo", preferredStyle: .alert)
                let accion = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                alerta.addAction(accion)
                present(alerta, animated: true, completion: nil)
                
            }
        
        }
        else {
            let alerta = UIAlertController(title: "Error", message: "Porfavor inserta todos los datos requeridos", preferredStyle: .alert)
            let accion = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alerta.addAction(accion)
            present(alerta, animated: true, completion: nil)
        }
        
    }
    
    
    @IBAction func quitaTeclado(_ sender: Any) {
        view.endEditing(true)
    }
    
    func checarMenores(lado1:Double, lado2:Double, lado3:Double) -> Bool {
        if (lado1 <= 0){
            return false
        }
        else if (lado2 <= 0){
            return false
        }
        else if (lado3 <= 0){
            return false
        }
        return true
    }
    
    func checarSum(lado1:Double, lado2:Double, lado3:Double) -> Bool{
        if((lado1 + lado2) <= lado3){
            return false
        }
        else if ((lado1 + lado3) <= lado2){
            return false
        }
        else if ((lado2 + lado3) <= lado1){
            return false
        }
        return true
    }
    
    func checarTipo(lado1:Double, lado2:Double, lado3:Double) -> String{
        if(lado1 == lado2 && lado2 == lado3){
            return "Equilatero"
        }
        else if((lado1 == lado2 || lado2 == lado3) || lado1 == lado3){
            return "Isosceles"
        }
        else{
            return "Escaleno"
        }
    }

    @IBAction func cambiarNombre(_ sender: Any) {
        if(swAreaoTipo.isOn){
            bBoton.setTitle("Que triangulo es?", for: .normal)
            tfTipoDeTri.text = nil
        }
        else{
            bBoton.setTitle("Calcula el area", for: .normal)
            imgTri.image = nil
            tfTipoDeTri.text = nil
        }
    }
}

