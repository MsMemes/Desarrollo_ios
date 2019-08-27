//
//  ViewController.swift
//  Calendario
//
//  Created by Maggie Jimenez Herrera on 8/26/19.
//  Copyright © 2019 Maggie Jimenez Herrera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbYear: UILabel!
    @IBOutlet weak var lbDia: UILabel!
    @IBOutlet weak var lbMes: UILabel!
    @IBOutlet weak var lbDiaL: UILabel!
    @IBOutlet var swpieMov: UISwipeGestureRecognizer!
    @IBOutlet var swpieIzq: UISwipeGestureRecognizer!
    var fecha = Date()
    
    let formateador = DateFormatter()
    
    override func viewDidLoad() {
        
        formateador.dateFormat = "YYYY"
        let yearString = formateador.string(from: fecha)
        
        formateador.dateFormat = "MMMM"
        let mesString = formateador.string(from: fecha)
        
        formateador.dateFormat = "dd"
        let diaString = formateador.string(from: fecha)
        
        formateador.dateFormat = "EEEE"
        let diaLString = formateador.string(from: fecha)
        
        super.viewDidLoad()
        
        lbYear.text = "\(yearString)"
        lbMes.text = "\(mesString)"
        lbDia.text = "\(diaString)"
        lbDiaL.text = "\(diaLString)"
        
    }

    
    @IBAction func mover(_ sender: Any) {
            fecha = Calendar.current.date(byAdding: .day, value: -1, to: fecha)!
            formateador.dateFormat = "YYYY"
            let yearString = formateador.string(from: fecha)
            
            formateador.dateFormat = "MMMM"
            let mesString = formateador.string(from: fecha)
            
            formateador.dateFormat = "dd"
            let diaString = formateador.string(from: fecha)
            
            formateador.dateFormat = "EEEE"
            let diaLString = formateador.string(from: fecha)
            lbYear.text = "\(yearString)"
            lbMes.text = "\(mesString)"
            lbDia.text = "\(diaString)"
            lbDiaL.text = "\(diaLString)"
    }
    
    
    @IBAction func moverIzq(_ sender: Any) {
        fecha = Calendar.current.date(byAdding: .day, value: 1, to: fecha)!
        formateador.dateFormat = "YYYY"
        let yearString = formateador.string(from: fecha)
        
        formateador.dateFormat = "MMMM"
        let mesString = formateador.string(from: fecha)
        
        formateador.dateFormat = "dd"
        let diaString = formateador.string(from: fecha)
        
        formateador.dateFormat = "EEEE"
        let diaLString = formateador.string(from: fecha)
        lbYear.text = "\(yearString)"
        lbMes.text = "\(mesString)"
        lbDia.text = "\(diaString)"
        lbDiaL.text = "\(diaLString)"
    }
    
}

