//
//  ViewControllerImagen.swift
//  Tarea3
//
//  Created by Maggie Jimenez Herrera on 9/4/19.
//  Copyright © 2019 Maggie Jimenez Herrera. All rights reserved.
//

import UIKit

class ViewControllerImagen: UIViewController {
    
    
    @IBOutlet weak var btPharah: UIButton!
    @IBOutlet weak var btMoira: UIButton!
    @IBOutlet weak var btLucio: UIButton!
    
    var imgLucio = UIImage(named: "Lucio")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
            let vistaIni = segue.destination as! ViewController
            
            if (sender as! UIButton) == btPharah{
                vistaIni.imagen = btPharah.currentBackgroundImage
            }
            else if (sender as! UIButton) == btLucio{
                vistaIni.imagen = btLucio.currentBackgroundImage
            }
            else if (sender as! UIButton) == btMoira{
                vistaIni.imagen = btMoira.currentBackgroundImage
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}
