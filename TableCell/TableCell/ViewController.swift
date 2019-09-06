//
//  ViewController.swift
//  TableCell
//
//  Created by Maggie Jimenez Herrera on 9/2/19.
//  Copyright © 2019 Maggie Jimenez Herrera. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var celdas: UITableView!
    
    
    var lista = ["Maggie", "Ana", "Lexa", "Clarke", "Madi"] //  Crea un objeto lista con datos
    var lista2 = [String]() // Crea un objeto lista vacia
    var lista3 : [String]!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        title = "Usuarios"
    }

    // MARK: -Metodos de delagate y data source
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lista.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celda = tableView.dequeueReusableCell(withIdentifier: "idCell")!
        
        celda.textLabel?.text = lista[indexPath.row]
        celda.detailTextLabel?.text = "\(indexPath.row)"
        celda.imageView?.image = UIImage(named: "Usuario")
        
        return celda
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vistaSig = segue.destination as! ViewControllerLetrero
        let indice = celdas.indexPathForSelectedRow!
        
        vistaSig.datoMostar = lista[indice.row]
    }

}

