//
//  TableViewController.swift
//  Tarea4
//
//  Created by Maggie Jimenez Herrera on 9/25/19.
//  Copyright © 2019 Maggie Jimenez Herrera. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    
    var listaEmpleados = [Empleado]()
    
    

    @IBOutlet var celdas: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Empleados"
        
        let emp1 = Empleado(nombre: "Silvia", sueldo: 1300, foto: UIImage(named: "perfil")!, departamento: "Encargada")
        let emp2 = Empleado(nombre: "Pato", sueldo: 1200, foto: UIImage(named: "perfil")!, departamento: "General")
        let emp3 = Empleado(nombre: "Grecia", sueldo: 1100, foto: UIImage(named: "perfil")!, departamento: "Auxiliar")
        
        listaEmpleados.append(emp1)
        listaEmpleados.append(emp2)
        listaEmpleados.append(emp3)

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
         self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return listaEmpleados.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> CustomTableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath) as! CustomTableViewCell
        
        cell.lbNombre.text = listaEmpleados[indexPath.row].nombre
        cell.lbSueldo.text = "$\(listaEmpleados[indexPath.row].sueldo!)"
        cell.lbPuesto.text = listaEmpleados[indexPath.row].departamento
        cell.imgFoto.image = listaEmpleados[indexPath.row].foto
        

        // Configure the cell...

        return cell
    }
    

    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        
        return true
    }
    

    
    // Remueve una celda de la tabla
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            listaEmpleados.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

    
    // Mueve una celda de la tabla
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        
        let temp = listaEmpleados[fromIndexPath.row]
        listaEmpleados[fromIndexPath.row] = listaEmpleados[to.row]
        listaEmpleados[to.row] = temp

    }
    

    
    // Permite que se pueda mover una celda
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(127)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
