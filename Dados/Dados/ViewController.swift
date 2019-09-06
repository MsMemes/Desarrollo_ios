//
//  ViewController.swift
//  Dados
//
//  Created by Maggie Jimenez Herrera on 8/29/19.
//  Copyright © 2019 Maggie Jimenez Herrera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Variables de los contadores
    @IBOutlet weak var cont2: UILabel!
    @IBOutlet weak var cont3: UILabel!
    @IBOutlet weak var cont4: UILabel!
    @IBOutlet weak var cont5: UILabel!
    @IBOutlet weak var cont6: UILabel!
    @IBOutlet weak var cont7: UILabel!
    @IBOutlet weak var cont8: UILabel!
    @IBOutlet weak var cont9: UILabel!
    @IBOutlet weak var cont10: UILabel!
    @IBOutlet weak var cont11: UILabel!
    @IBOutlet weak var cont12: UILabel!
    //Variable boton
    @IBOutlet weak var btLanzar: UIButton!
    //Variable de imagenes
    @IBOutlet weak var imgDado1: UIImageView!
    @IBOutlet weak var imgDado2: UIImageView!
    //Variables de las barras
    @IBOutlet weak var bar2: UIProgressView!
    @IBOutlet weak var bar3: UIProgressView!
    @IBOutlet weak var bar4: UIProgressView!
    @IBOutlet weak var bar5: UIProgressView!
    @IBOutlet weak var bar6: UIProgressView!
    @IBOutlet weak var bar7: UIProgressView!
    @IBOutlet weak var bar8: UIProgressView!
    @IBOutlet weak var bar9: UIProgressView!
    @IBOutlet weak var bar10: UIProgressView!
    @IBOutlet weak var bar11: UIProgressView!
    @IBOutlet weak var bar12: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cont2.text = "0"
        cont3.text = "0"
        cont4.text = "0"
        cont5.text = "0"
        cont6.text = "0"
        cont7.text = "0"
        cont8.text = "0"
        cont9.text = "0"
        cont10.text = "0"
        cont11.text = "0"
        cont12.text = "0"
        
        bar2.setProgress(0, animated: false)
        bar3.setProgress(0, animated: false)
        bar4.setProgress(0, animated: false)
        bar5.setProgress(0, animated: false)
        bar6.setProgress(0, animated: false)
        bar7.setProgress(0, animated: false)
        bar8.setProgress(0, animated: false)
        bar9.setProgress(0, animated: false)
        bar10.setProgress(0, animated: false)
        bar11.setProgress(0, animated: false)
        bar12.setProgress(0, animated: false)
        
    }

    
    
    @IBAction func lanzar(_ sender: Any) {
        
        let x = Int.random(in: 1...6)
        let y =  Int.random(in: 1...6)
        
        dado1(x: x)
        dado2(y: y)
        
        let suma = x + y
    
        
        if suma == 2{
            let cont = Double(cont2.text!)! + 1
            let icont = Int(cont)
            cont2.text = String(icont)
            let z = cont * 1.0 / 50
            bar2.setProgress(Float(z), animated: true)
        }
        else if suma == 3{
            let cont = Double(cont3.text!)! + 1
            let icont = Int(cont)
            cont3.text = String(icont)
            let z = cont * 1.0 / 50
            bar3.setProgress(Float(z), animated: true)
        }
        else if suma == 4{
            let cont = Double(cont4.text!)! + 1
            let icont = Int(cont)
            cont4.text = String(icont)
            let z = cont * 1.0 / 50
            bar4.setProgress(Float(z), animated: true)
        }
        else if suma == 5{
            let cont = Double(cont5.text!)! + 1
            let icont = Int(cont)
            cont5.text = String(icont)
            let z = cont * 1.0 / 50
            bar5.setProgress(Float(z), animated: true)
        }
        else if suma == 6{
            let cont = Double(cont6.text!)! + 1
            let icont = Int(cont)
            cont6.text = String(icont)
            let z = cont * 1.0 / 50
            bar6.setProgress(Float(z), animated: true)
        }
        else if suma == 7{
            let cont = Double(cont7.text!)! + 1
            let icont = Int(cont)
            cont7.text = String(icont)
            let z = cont * 1.0 / 50
            bar7.setProgress(Float(z), animated: true)
        }
        else if suma == 8{
            let cont = Double(cont8.text!)! + 1
            let icont = Int(cont)
            cont8.text = String(icont)
            let z = cont * 1.0 / 50
            bar8.setProgress(Float(z), animated: true)
        }
        else if suma == 9{
            let cont = Double(cont9.text!)! + 1
            let icont = Int(cont)
            cont9.text = String(icont)
            let z = cont * 1.0 / 50
            bar9.setProgress(Float(z), animated: true)
        }
        else if suma == 10{
            let cont = Double(cont10.text!)! + 1
            let icont = Int(cont)
            cont10.text = String(icont)
            let z = cont * 1.0 / 50
            bar10.setProgress(Float(z), animated: true)
        }
        else if suma == 11{
            let cont = Double(cont11.text!)! + 1
            let icont = Int(cont)
            cont11.text = String(icont)
            let z = cont * 1.0 / 50
            bar11.setProgress(Float(z), animated: true)
        }
        else if suma == 12{
            let cont = Double(cont12.text!)! + 1
            let icont = Int(cont)
            cont12.text = String(icont)
            let z = cont * 1.0 / 50
            bar12.setProgress(Float(z), animated: true)
        }
        
        
    }
    
    func dado1(x : Int) {
        if x == 1{
            imgDado1.image = UIImage(named: "dado1")
        }
        else if x == 2{
            imgDado1.image = UIImage(named : "dado2")
        }
        else if x == 3{
            imgDado1.image = UIImage(named : "dado3")
        }
        else if x == 4{
            imgDado1.image = UIImage(named : "dado4")
        }
        else if x == 5{
            imgDado1.image = UIImage(named : "dado5")
        }
        else if x == 6{
            imgDado1.image = UIImage(named : "dado6")
        }
    }
    
    func dado2(y : Int) {
        if y == 1{
            imgDado2.image = UIImage(named: "dado1")
        }
        else if y == 2{
            imgDado2.image = UIImage(named : "dado2")
        }
        else if y == 3{
            imgDado2.image = UIImage(named : "dado3")
        }
        else if y == 4{
            imgDado2.image = UIImage(named : "dado4")
        }
        else if y == 5{
            imgDado2.image = UIImage(named : "dado5")
        }
        else if y == 6{
            imgDado2.image = UIImage(named : "dado6")
        }
    }
    

}

