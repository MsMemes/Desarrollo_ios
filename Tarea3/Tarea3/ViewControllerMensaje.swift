//
//  ViewControllerMensaje.swift
//  Tarea3
//
//  Created by Maggie Jimenez Herrera on 9/4/19.
//  Copyright © 2019 Maggie Jimenez Herrera. All rights reserved.
//

import UIKit

class ViewControllerMensaje: UIViewController {

    @IBOutlet weak var btListo: UIButton!
    @IBOutlet weak var tfMensaje: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func pasarMensaje(_ sender: Any) {
        if tfMensaje.text == ""{
            let alerta = UIAlertController(title: "Error", message: "No hay un mensaje para pasar, porfavor ingresa uno", preferredStyle: .alert)
            let accion = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alerta.addAction(accion)
            present(alerta, animated: true, completion: nil)
        }
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if tfMensaje.text == ""{
            return false
        }
            return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vistaIni = segue.destination as! ViewController
        
        vistaIni.mensaje = tfMensaje.text
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
        
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
 

}
