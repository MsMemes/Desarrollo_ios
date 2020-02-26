//
//  ViewController.swift
//  EjercicioScrollView
//
//  Created by Maggie Jimenez Herrera on 10/17/19.
//  Copyright © 2019 Maggie Jimenez Herrera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var scroll: UIScrollView!
    @IBOutlet weak var vistaMorada: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        scroll.contentSize = vistaMorada.frame.size
    }

}

