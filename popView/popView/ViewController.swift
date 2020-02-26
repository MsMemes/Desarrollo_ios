//
//  ViewController.swift
//  popView
//
//  Created by Maggie Jimenez Herrera on 10/17/19.
//  Copyright © 2019 Maggie Jimenez Herrera. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPopoverPresentationControllerDelegate {
    
    
    @IBOutlet weak var lbTexto: UILabel!
    var dato : String!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        lbTexto.text = dato
    }

    func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
        return .none
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let vistaPopOver = segue.destination as! ViewControllerPop
        vistaPopOver.popoverPresentationController?.delegate = self
        vistaPopOver.dato = lbTexto.text
    }
    
   
    
    @IBAction func unwindToPop(_ unwindSegue: UIStoryboardSegue) {
        let sourceViewController = unwindSegue.source
        lbTexto.text = dato
        // Use data from the view controller which initiated the unwind segue
    }

}

