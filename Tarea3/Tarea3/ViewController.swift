//
//  ViewController.swift
//  Tarea3
//
//  Created by Maggie Jimenez Herrera on 9/4/19.
//  Copyright © 2019 Maggie Jimenez Herrera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgFoto: UIImageView!
    @IBOutlet weak var lbMensaje: UILabel!
    
    var imagen : UIImage!
    var mensaje : String!
    var color : UIColor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgFoto.image = imagen
       
        // Do any additional setup after loading the view.
    }
    
    @IBAction func unwindFoto(_ unwindSegue: UIStoryboardSegue) {
        imgFoto.image = imagen

    }
    
    @IBAction func unwindColor(_ unwindSegue: UIStoryboardSegue) {
        // Use data from the view controller which initiated the unwind segue
        self.view.backgroundColor = color
    }
    
    @IBAction func unwindMensaje(_ unwindSegue: UIStoryboardSegue) {
        // Use data from the view controller which initiated the unwind segue
        lbMensaje.text = mensaje
    }

}


