//
//  ViewController.swift
//  TableView1
//
//  Created by Germán Santos Jaimes on 8/30/18.
//  Copyright © 2018 iosLab. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var alumnos = ["Ariana", "Luis", "Fer", "Carlos", "Magui"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return alumnos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        
        if indexPath.row % 2 == 0{
            cell.backgroundColor = UIColor.red
        }else{
            cell.backgroundColor = UIColor.white
        }
        
        cell.textLabel?.text = alumnos[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(alumnos[indexPath.row])
        
        let cell = tableView.cellForRow(at: indexPath)
        cell?.accessoryType = .checkmark
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segunda"{
            let destino = segue.destination as! SecondViewController
            destino.vieneDeVistaUno = "cualquiercosa"
        }
    }
    
}

