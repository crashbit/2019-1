//
//  ViewController.swift
//  Carrito
//
//  Created by Germán Santos Jaimes on 9/19/18.
//  Copyright © 2018 iosLab. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    var Productos = [Producto]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Productos.append(Producto(nombre: "cosa1", precio: 13.2, desc: "cosa chida", imagen: "alguna imagen"))
        
        Productos.append(Producto(nombre: "cosa2", precio: 14.2, desc: "cosa fea", imagen: "otra imagen"))
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Productos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "item", for: indexPath)
        
        cell.textLabel?.text = "\(Productos[indexPath.row].nombre) - \(Productos[indexPath.row].precio)"
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // Alumno despistado, aqui debe crear tu indexPath
        // let indexPath = nombreTabla.....
        let destination = segue.destination as! DetalleViewController
        //destination.producto = productos[indexPath.row]
        
    }

   

}

