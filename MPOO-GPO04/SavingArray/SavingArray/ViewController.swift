//
//  ViewController.swift
//  SavingArray
//
//  Created by Germán Santos Jaimes on 10/2/18.
//  Copyright © 2018 iosLab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var lista : [String] = []
    
    @IBOutlet weak var caja: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        let defaults = UserDefaults.standard
        
        lista = defaults.object(forKey: "lista") as? [String] ?? [String]()
        
        for item in lista{
            print(item)
        }
    }

    @IBAction func guardar(_ sender: UIButton) {
        let defaults = UserDefaults.standard
        
        if let cadena = caja.text{
            lista.append(cadena)
            defaults.set(lista, forKey: "lista")
        }
    }
}

