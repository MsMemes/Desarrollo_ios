//
//  ViewController.swift
//  Animacion
//
//  Created by Alumno on 8/19/19.
//  Copyright © 2019 Maggie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgLogo: UIImageView!
    @IBOutlet weak var slSlider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgLogo.image = UIImage(named: "gato")
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func mover(_ sender: Any) {
        UIView.animate(withDuration: 3, animations: {
            self.imgLogo.frame.origin.x = CGFloat(self.slSlider.value)
        })
    }
    

}

