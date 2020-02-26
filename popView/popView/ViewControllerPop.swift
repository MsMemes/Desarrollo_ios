//
//  ViewControllerPop.swift
//  popView
//
//  Created by Maggie Jimenez Herrera on 10/17/19.
//  Copyright © 2019 Maggie Jimenez Herrera. All rights reserved.
//

import UIKit

class ViewControllerPop: UIViewController {
    
    
    @IBOutlet weak var tfMensaje: UITextField!
    var dato : String!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tfMensaje.text = dato
        
        preferredContentSize = CGSize(width: 200, height: 180)

    }
    
    @IBAction func actualizar(_ sender: Any) {
        let vistaPrin = presentingViewController as! ViewController
        vistaPrin.dato = tfMensaje.text
        dismiss(animated: true, completion: nil)
    }
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation

}
