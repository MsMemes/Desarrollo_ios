//
//  ViewController.swift
//  ViewControllerTableView
//
//  Created by Maggie Jimenez Herrera on 9/12/19.
//  Copyright © 2019 Maggie Jimenez Herrera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var lbEmial: UILabel!
    @IBOutlet weak var lbDatos: UILabel!
    @IBOutlet weak var lbPuntos: UILabel!
    var player : jugador!
    var imagen : UIImage!
    
    @IBOutlet weak var imgFoto: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Datos del usuario"
        
        lbEmial.text = player.email
        lbDatos.text = player.nombre
        lbPuntos.text = "\(player.puntos)"
        imgFoto.image = player.imagen
        
        
        // Do any additional setup after loading the view.
    }


}

