//
//  CalificaViewController.swift
//  protocolosParaCompletar
//
//  Created by Maggie Jimenez Herrera on 9/26/19.
//  Copyright © 2019 com.itesm. All rights reserved.
//

import UIKit

protocol protocolModificarActividad{
    
    func modificarAct(cali : Int, coment : String) -> Void
    
}



class CalificaViewController: UIViewController {
    
    
    @IBOutlet weak var lbNombre: UILabel!
    @IBOutlet weak var tfCalificacion: UITextField!
    @IBOutlet weak var tfComentario: UITextView!
    
    
    var delegado : protocolModificarActividad!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func guardar(_ sender: Any) {
        
        if let cali = Int(tfCalificacion.text!),
            let comentarios = tfComentario.text{
            delegado.modificarAct(cali: cali, coment: comentarios)
            navigationController?.popToRootViewController(animated: true)
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
