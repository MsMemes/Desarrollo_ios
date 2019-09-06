//
//  ViewControllerColor.swift
//  Tarea3
//
//  Created by Maggie Jimenez Herrera on 9/4/19.
//  Copyright © 2019 Maggie Jimenez Herrera. All rights reserved.
//

import UIKit

class ViewControllerColor: UIViewController {
    
    
    @IBOutlet weak var btAzul: UIButton!
    @IBOutlet weak var btRosa: UIButton!
    @IBOutlet weak var brRojo: UIButton!
    @IBOutlet weak var btAma: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vistaIni = segue.destination as! ViewController
        
        if sender as! UIButton == btAma{
            vistaIni.color = btAma.backgroundColor
        }
        else if sender as! UIButton == btAzul{
            vistaIni.color = btAzul.backgroundColor
        }
        else if sender as! UIButton == btRosa{
            vistaIni.color = btRosa.backgroundColor
        }
        else{
            vistaIni.color = brRojo.backgroundColor
        }
    }
 

}
