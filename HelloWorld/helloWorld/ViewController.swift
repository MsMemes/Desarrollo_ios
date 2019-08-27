//
//  ViewController.swift
//  helloWorld
//
//  Created by Alumno on 8/12/19.
//  Copyright © 2019 Maggie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tfNombre: UITextField!
    @IBOutlet weak var tfMensaje: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func saludar(_ sender: UIButton) {
        
        tfMensaje.text = "Hola " + tfNombre.text!
    }
    
}

