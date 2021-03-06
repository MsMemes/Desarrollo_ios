//
//  TableViewControllerCategoria.swift
//  mini_Reto_2
//
//  Created by Maggie Jimenez Herrera on 10/5/19.
//  Copyright © 2019 Maggie Jimenez Herrera. All rights reserved.
//

import UIKit

class TableViewControllerCategoria: UITableViewController, administraCategoria {
    
    var listaCategorias = [Categoria]()
    
    var posiblesColores = [UIColor.blue, UIColor.green, UIColor.purple, UIColor.red, UIColor.yellow, UIColor.orange, UIColor.cyan]

    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Categorias"

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return listaCategorias.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)

        cell.textLabel?.text = listaCategorias[indexPath.row].titulo
        cell.backgroundColor = listaCategorias[indexPath.row].color.withAlphaComponent(0.7)
        return cell
    }
    
    func agregaCategoria(titulo : String, color : UIColor){
        let cat = Categoria(titulo: titulo, color: color)
        listaCategorias.append(cat)
        tableView.reloadData()
    }
    
    func modificaCategoria(color : UIColor){
        let index = tableView.indexPathForSelectedRow!
        listaCategorias[index.row].color = color
        tableView.reloadData()
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
        
        

        if segue.identifier == "modi"{
            let vistaSig = segue.destination as! ViewController
            let indexPath = tableView.indexPathForSelectedRow!
            vistaSig.titulo = listaCategorias[indexPath.row].titulo
            vistaSig.posiblesColores = posiblesColores
            vistaSig.delegado = self
            vistaSig.colorUsado = listaCategorias[indexPath.row].color
            vistaSig.aux = "modi"

        }
        else{
            let vistaSig = segue.destination as! ViewController
            vistaSig.posiblesColores = posiblesColores
            vistaSig.delegado = self
            vistaSig.aux = "agregar"
        }
    
    }
    

}
