//
//  ViewController.swift
//  mini_Reto_2
//
//  Created by Maggie Jimenez Herrera on 10/5/19.
//  Copyright © 2019 Maggie Jimenez Herrera. All rights reserved.
//

import UIKit

protocol administraCategoria {
    
    func agregaCategoria(titulo : String, color : UIColor) -> Void
    func modificaCategoria(color : UIColor) -> Void
}

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    var posiblesColores = [UIColor]()
    var colorUsado : UIColor!
    @IBOutlet weak var tfTitulo: UITextField!
    var titulo : String!
    var aux : String!
    var delegado : administraCategoria!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tfTitulo.text = titulo
        
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posiblesColores.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda2", for: indexPath)
        
        //let nuevosColores = posiblesColores.filter { $0 != colorUsado }
        cell.backgroundColor = posiblesColores[indexPath.row]
        cell.textLabel?.text = " "
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if aux == "agregar"{
            if tfTitulo.text == ""{
                let alerta = UIAlertController(title: "Error", message: "Porfavor ingresa una categoria", preferredStyle: .alert)
                let accion = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                alerta.addAction(accion)
                present(alerta, animated: true, completion: nil)
            }
            else{
                let color = posiblesColores[indexPath.row]
                if let titulo = tfTitulo.text{
                    delegado.agregaCategoria(titulo: titulo, color: color)
                }
                navigationController?.popViewController(animated: true)
            }
        }
        else{
            //let nuevosColores = posiblesColores.filter { $0 != colorUsado }
            let color = posiblesColores[indexPath.row]
            delegado.modificaCategoria(color: color)
            navigationController?.popViewController(animated: true)
        }

    }
    
}

