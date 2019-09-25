//
//  ViewController.swift
//  Parcial1V2Ago19
//
//  Created by Yolanda Martinez on 9/15/19.
//  Copyright © 2019 com.itesm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Variables problema 1
    @IBOutlet weak var btGrande: UIButton!
    @IBOutlet weak var btPequeño: UIButton!
    @IBOutlet weak var imgLapiz: UIImageView!
    
    //Variables problema 2
    @IBOutlet var swipeMov: UISwipeGestureRecognizer!
    @IBOutlet weak var lbCont: UILabel!
    var icon : Int = 1
    
    //Variables problema 3
    @IBOutlet weak var imgFoto: UIImageView!
    var imagen : UIImage!
    
    //Variables problema 4
    @IBOutlet weak var tfValor: UITextField!
    @IBOutlet weak var btCalcular: UIButton!
    @IBOutlet weak var tfResultado: UITextField!
    @IBOutlet weak var swCambio: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgFoto.image = imagen
    }

    @IBAction func moverSwipe(_ sender: Any) {
        icon += 1
        lbCont.text = "\(icon)"
    }
    
    @IBAction func unwindImagen(_ unwindSegue: UIStoryboardSegue) {
        imgFoto.image = imagen
                // Use data from the view controller which initiated the unwind segue
    }
    
    @IBAction func calcula(_ sender: Any) {
        if let valor = Double(tfValor.text!){
            var resultado = 0.0
            if swCambio.isOn{
                resultado = pow(valor, 3)
            }
            else{
                resultado = pow(valor, 2)
            }
            tfResultado.text = "\(resultado)"
        }
    }
    
    @IBAction func hacerPequeño(_ sender: Any) {
        
        UIView.animate(withDuration: 3, animations:{
            self.imgLapiz.frame.origin.x = 20
    })
    }
    
}

