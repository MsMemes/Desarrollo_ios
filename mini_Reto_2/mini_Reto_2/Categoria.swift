//
//  Categoria.swift
//  mini_Reto_2
//
//  Created by Maggie Jimenez Herrera on 10/5/19.
//  Copyright © 2019 Maggie Jimenez Herrera. All rights reserved.
//

import UIKit

class Categoria: NSObject {
    
    var titulo : String!
    var color : UIColor!
    
    init(titulo : String, color : UIColor) {
        self.titulo = titulo
        self.color = color
    }

}
