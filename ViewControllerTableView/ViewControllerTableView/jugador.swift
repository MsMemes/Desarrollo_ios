//
//  jugador.swift
//  ViewControllerTableView
//
//  Created by Maggie Jimenez Herrera on 9/12/19.
//  Copyright © 2019 Maggie Jimenez Herrera. All rights reserved.
//

import UIKit

class jugador: NSObject {
    
    var nombre : String = ""
    var puntos : Int = 0
    var email : String = ""
    var imagen = UIImage()
    
    init(nombre : String, puntos : Int, email : String, imagen : UIImage){
        
        self.nombre = nombre
        self.puntos = puntos
        self.email = email
        self.imagen = imagen
        
    }

}
