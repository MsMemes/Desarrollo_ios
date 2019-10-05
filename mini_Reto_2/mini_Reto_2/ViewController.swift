//
//  ViewController.swift
//  mini_Reto_2
//
//  Created by Maggie Jimenez Herrera on 10/5/19.
//  Copyright © 2019 Maggie Jimenez Herrera. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITabBarDelegate, UITableViewDataSource {
    
    
    
    var posiblesColores = [UIColor]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Modificar"
        // Do any additional setup after loading the view.
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posiblesColores.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda2", for: indexPath)
        
        cell.backgroundColor = posiblesColores[indexPath.row]
        cell.textLabel?.text = " "
        return cell
    }
}

