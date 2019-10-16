//
//  ViewController.swift
//  protocolosParaCompletar
//
//  Created by Yolanda Martinez on 2/22/18.
//  Copyright © 2018 com.itesm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    var act : Actividad!
    
    @IBOutlet weak var lbNombreAct: UILabel!
    @IBOutlet weak var lbCalificacion: UILabel!
    @IBOutlet weak var textViewComentarios: UITextView!
    
    var temp : protocolModificarActividad!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lbNombreAct.text = act.nombreAct
        lbCalificacion.text = "\(act.calif)"
        textViewComentarios.text = act.coment
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let vistaCali = segue.destination as! CalificaViewController
        vistaCali.delegado = temp
        
    }



}

