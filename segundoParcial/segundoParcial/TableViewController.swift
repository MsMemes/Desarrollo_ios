//
//  TableViewController.swift
//  segundoParcial
//
//  Created by Maggie Jimenez Herrera on 10/21/19.
//  Copyright © 2019 Maggie Jimenez Herrera. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController, protocoloAgregar{
    
    @IBOutlet var celdas: UITableView!
    var numeros = [Int]()
    
    func dataFileUrl() -> URL {
           let url = FileManager().urls(for: .documentDirectory, in: .userDomainMask).first!
           let pathArchivo = url.appendingPathComponent("numeros")
           return pathArchivo
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //obtenerNumeros()
        //numeros = [1, 2, 3, 4]
        if numeros.count == 0 {
            let primerNumero = Int(arc4random() % 5 + 1)
            numeros.append(primerNumero)
        }
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numeros.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        
        cell.textLabel?.text = "\(numeros[indexPath.row])"

        return cell
    }

    func guardarNumeros() {
        
         do {
             let data = try PropertyListEncoder().encode(numeros)
             try data.write(to: dataFileUrl())
          }
          catch {
             print("Save Failed")
          }
        
    }
    /*func obtenerNumeros() {
        
        do {
            let data = try Data.init(contentsOf: dataFileUrl())
            numeros = try PropertyListDecoder().decode("numeros")
        }
        catch {
            print("Error reading or decoding file")
        }
    }*/
    
    func agregar(valor: Int) {
        numeros.append(valor)
        tableView.reloadData()
        guardarNumeros()
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        let vistaAgregar = segue.destination as! ViewController
        let indice = celdas.indexPathForSelectedRow!
        vistaAgregar.dato = (numeros[indice.row])
        vistaAgregar.delegado = self
        
    }


}
