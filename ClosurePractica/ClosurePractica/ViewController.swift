//
//  ViewController.swift
//  ClosurePractica
//
//  Created by Maggie Jimenez Herrera on 10/24/19.
//  Copyright © 2019 Maggie Jimenez Herrera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tfId: UITextField!
    @IBOutlet weak var tfNombre: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        agregaboton()
        agregarCampo()
    }
    
    func agregarCampo() {
        let campo = UITextField(frame: CGRect(x: 100, y: 300, width:150, height: 50))
        campo.placeholder = "teclea..."
        campo.backgroundColor = UIColor.yellow
        campo.borderStyle = .roundedRect
        
        view.addSubview(campo)
    }
    
    func agregaboton() {
        let boton = UIButton(type: .system)
        boton.frame = CGRect(x: 100, y: 450, width: 120, height: 50)
        boton.backgroundColor = UIColor.purple.withAlphaComponent(0.3)
        boton.layer.cornerRadius = 6
        boton.setTitle("boton", for: .normal)
        boton.addTarget(self, action: #selector(oprimirBoton), for: .touchUpInside)
        
        view.addSubview(boton)
    }
    @IBAction func oprimirBoton() {
        print("Oprimio el boton")
    }

    @IBAction func pedirDatos(_ sender: Any) {
        
        var identTextField : UITextField?
        var nameTextField : UITextField?
        
        let alerta = UIAlertController(title: "Titulo de la alerta", message: "Teclea los datos", preferredStyle: .alert)
        
        let accionDatos = UIAlertAction(title: "OK", style: .default) { (accion) -> Void in
            
            //Checqa si hay dato en el id
            if let ident = identTextField?.text{
                if let ide = Int(ident){
                    self.tfId.text = String(ide)
                }
                else{
                    print("El id no es numero")
                }
            }
            else{
                print("No hay dato")
            }
            //Checa si hay dato en el nombre
            if let nombre = nameTextField?.text{
                self.tfNombre.text = nombre
            }
            else{
                print("No hay dato")
            }
        }// Aqui termina el closure
        
        alerta.addTextField { (txtUserName) -> Void in
            identTextField = txtUserName
            identTextField?.placeholder = "<teclea el id>"
        }
        alerta.addTextField { (txtUserName) -> Void in
            nameTextField = txtUserName
            nameTextField?.placeholder = "<teclea el nombre>"
        }
        
        alerta.addAction(accionDatos)
        
        let accionCancel = UIAlertAction(title: "Cancel", style: .cancel) { (accion) -> Void in
            print("Cancelado")
        }
        
        alerta.addAction(accionCancel)
        
        present(alerta, animated: true, completion: nil)
        
    }
    
}

