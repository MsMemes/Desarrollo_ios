//
//  ViewController.swift
//  ActividadLunes09
//
//  Created by Maggie Jimenez Herrera on 9/9/19.
//  Copyright © 2019 Maggie Jimenez Herrera. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var imgFoto: UIImageView!
    @IBOutlet weak var lbTipo: UILabel!
    @IBOutlet weak var lbPrecio: UILabel!
    @IBOutlet weak var lbCapacidad: UILabel!
    
    var arrDicionarios : NSArray!
    // Creo la variable pero no existe el obejto

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "Property List", ofType: "plist")!
        arrDicionarios = NSArray(contentsOfFile: path)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrDicionarios.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda")!
        
        let dic = arrDicionarios[indexPath.row] as! NSDictionary
        cell.textLabel?.text = dic["tipo"] as! String
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let dic = arrDicionarios[indexPath.row] as! NSDictionary
        
        lbTipo.text = dic["tipo"] as! String
        lbCapacidad.text = dic["capacidad"] as! String
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        
        let preNSMunber = dic["precio"] as! NSNumber
        lbPrecio.text = formatter.string(from: preNSMunber)
        
        let strUrlFoto = dic["urlFoto"] as! String
        let url = URL(string: strUrlFoto)!
        let imgData = NSData(contentsOf: url)!
        imgFoto.image = UIImage(data: imgData as! Data)
        

    }


}

