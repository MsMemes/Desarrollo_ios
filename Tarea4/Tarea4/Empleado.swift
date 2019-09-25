//
//  Empleado.swift
//  Tarea4
//
//  Created by Maggie Jimenez Herrera on 9/25/19.
//  Copyright © 2019 Maggie Jimenez Herrera. All rights reserved.
//

import UIKit

class Empleado: NSObject {
    
    var nombre : String!
    var sueldo : Float!
    var foto : UIImage!
    var departamento : String!
    
    init (nombre : String, sueldo : Float, foto : UIImage, departamento : String){
        self.nombre = nombre
        self.sueldo = sueldo
        self.departamento = departamento
        self.foto = foto
    }

}
