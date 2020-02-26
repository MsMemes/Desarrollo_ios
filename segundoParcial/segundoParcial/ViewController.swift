//
//  ViewController.swift
//  segundoParcial
//
//  Created by Maggie Jimenez Herrera on 10/21/19.
//  Copyright © 2019 Maggie Jimenez Herrera. All rights reserved.
//

import UIKit

protocol protocoloAgregar {
    func agregar(valor : Int) -> Void 
}

class ViewController: UIViewController {
    
    
    @IBOutlet weak var btAgregar: UIButton!
    @IBOutlet weak var btRegresar: UIButton!
    @IBOutlet weak var lbValor: UILabel!
    var dato : Int!
    var delegado : protocoloAgregar!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbValor.text = "\(dato!)"
        // Do any additional setup after loading the view.
    }

    
    @IBAction func agregarValor(_ sender: Any) {
        let siguienteNumero = dato + 1
        delegado.agregar(valor: siguienteNumero)
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func regresar(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
}

