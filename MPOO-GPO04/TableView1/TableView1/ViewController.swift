//
//  ViewController.swift
//  TableView1
//
//  Created by Germán Santos Jaimes on 8/30/18.
//  Copyright © 2018 iosLab. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tablita: UITableView!
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
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deleteAction = UIContextualAction(style: .destructive, title: "Delete") { (action, sourceview, completionHandler) in
            
            self.alumnos.remove(at: indexPath.row)
            self.tablita.deleteRows(at: [indexPath], with: .fade )
            completionHandler(true)
            
        }
        
        let shareAction = UIContextualAction(style: .normal, title: "Share") { (action, sourceview, completionHandler) in
            
            let defaultTex = "Compartiendo a: \(self.alumnos[indexPath.row])"
            
            let activityController = UIActivityViewController(activityItems: [defaultTex], applicationActivities: nil)
            
            self.present(activityController, animated: true, completion: nil)
            
            completionHandler(true)
        }
        
        shareAction.backgroundColor = UIColor.green
        
        let swipeConfiguration = UISwipeActionsConfiguration(actions: [deleteAction, shareAction])
        
        
        return swipeConfiguration
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segunda"{
            
            let indexPath = tablita.indexPathForSelectedRow
            
            let destino = segue.destination as! SecondViewController
            destino.vieneDeVistaUno = alumnos[(indexPath?.row)!]
        }
    }
    
    @IBAction func unwindSecondView( segue: UIStoryboardSegue){
        
    }
    
}

