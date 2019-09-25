//
//  ViewControllerImagen.swift
//  Parcial1V2Ago19
//
//  Created by Maggie Jimenez Herrera on 9/19/19.
//  Copyright © 2019 com.itesm. All rights reserved.
//

import UIKit

class ViewControllerImagen: UIViewController {

    @IBOutlet weak var btMorada: UIButton!

    @IBOutlet weak var btAqua: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if sender as! UIButton == btMorada{
            let vistaInic = segue.destination as! ViewController
            vistaInic.imagen = UIImage(named: "EsferaMorada")
        }
        if sender as! UIButton == btAqua{
            let vistaInic = segue.destination as! ViewController
            vistaInic.imagen = UIImage(named: "esferaAqua")
        }
    }
 

}
