//
//  ViewController.swift
//  persistencia
//
//  Created by Maggie Jimenez Herrera on 9/30/19.
//  Copyright © 2019 Maggie Jimenez Herrera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfDato1: UITextField!
    @IBOutlet weak var tfDato2: UITextField!
    @IBOutlet weak var tfDato3: UITextField!
    @IBOutlet weak var tfDato4: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let app = UIApplication.shared
        NotificationCenter.default.addObserver(self, selector: #selector(aplicacionBackground(notificacion:)), name: UIApplication.didEnterBackgroundNotification, object: app)
        
        
        
        let filePath = dataFilePath()
        if FileManager.default.fileExists(atPath: filePath){
            let arreglo = NSArray(contentsOfFile: filePath)!
            tfDato1.text = arreglo[0] as? String
            tfDato2.text = arreglo[1] as? String
            tfDato3.text = arreglo[2] as? String
            tfDato4.text = arreglo[3] as? String
        }
        // Do any additional setup after loading the view.
    }
    
    // Se utiliza cuando llega la notificacion
    @IBAction func aplicacionBackground(notificacion : NSNotification) {
        
        let arreglo : NSMutableArray = []
        arreglo.add(tfDato1!)
        arreglo.add(tfDato2!)
        arreglo.add(tfDato3!)
        arreglo.add(tfDato4!)
        
        
        // Guarda los datos en la "base"
        arreglo.write(toFile: dataFilePath(), atomically: true)
    }
    
    func dataFilePath() -> String {
        let url = FileManager().urls(for: .documentDirectory, in: .userDomainMask).first!
        let pathArchivo = url.appendingPathComponent("dataFile.plist")
        return pathArchivo.path
    }
    
    
    


}

