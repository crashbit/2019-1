//
//  ViewController.swift
//  GuardarArreglo
//
//  Created by Germán Santos Jaimes on 10/1/18.
//  Copyright © 2018 iosLab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var lista : [String] = []
    
    @IBOutlet weak var caja: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        let defaults = UserDefaults.standard
        print("inicio")
        lista = defaults.object(forKey: "lista") as? [String] ?? [String]()
        
        print(lista.count)
        for cadena in lista{
            print(cadena)
        }
        
        
    }


    @IBAction func gardar(_ sender: UIButton) {
        let defaults = UserDefaults.standard
        
        if let dato = caja.text{
            lista.append(dato)
            defaults.set(lista, forKey: "lista")
        }
    }
}

