//
//  ViewControllerLetrero.swift
//  TableCell
//
//  Created by Maggie Jimenez Herrera on 9/2/19.
//  Copyright © 2019 Maggie Jimenez Herrera. All rights reserved.
//

import UIKit

class ViewControllerLetrero: UIViewController {

    @IBOutlet weak var lbLetrero: UILabel!
    
    var datoMostar:  String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbLetrero.text = datoMostar!
        title = "Datos del usuario"

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
