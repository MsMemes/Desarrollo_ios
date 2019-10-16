//
//  TableViewControllerCuarto.swift
//  tabEjercicio
//
//  Created by Maggie Jimenez Herrera on 10/7/19.
//  Copyright © 2019 Maggie Jimenez Herrera. All rights reserved.
//

import UIKit

class TableViewControllerCuarto: UITableViewController {
    
    
    var lista = ["A", "B", "C", "D", "E"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lista.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = lista[indexPath.row]

        return cell
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       let vistaSig = segue.destination as! ViewControllerQuinto
        let indice = tableView.indexPathForSelectedRow!
        vistaSig.datoMostrar = lista[indice.row]
    }

}
