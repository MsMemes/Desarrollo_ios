//
//  TableViewControllerPrincipal.swift
//  ViewControllerTableView
//
//  Created by Maggie Jimenez Herrera on 9/12/19.
//  Copyright © 2019 Maggie Jimenez Herrera. All rights reserved.
//

import UIKit

class TableViewControllerPrincipal: UITableViewController {
    
    var listaJugadores = [jugador]()
    
    @IBOutlet var celdas: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Usuarios"
        
        let jug1 = jugador(nombre: "Clarke", puntos: 1500, email: "clarke@gmail.com", imagen: UIImage(named: "clarke")!)
        let jug2 = jugador(nombre: "Pharah", puntos: 1800, email: "pharah@gmail.com", imagen: UIImage(named: "Pharah")!)
        let juga3 = jugador(nombre: "Lexa", puntos: 1350, email: "lexa@gmail.com", imagen: UIImage(named: "lexa")!)
        listaJugadores.append(jug1)
        listaJugadores += [jug2, juga3]
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return listaJugadores.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        

        
        cell.textLabel?.text = listaJugadores[indexPath.row].nombre
        cell.detailTextLabel?.text = "\(indexPath.row)"
        cell.imageView?.image = listaJugadores[indexPath.row].imagen

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vistaSig = segue.destination as! ViewController
        let indice = celdas.indexPathForSelectedRow!
        vistaSig.player = listaJugadores[indice.row]

        
        
    }
 

}
