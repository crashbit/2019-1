//
//  ViewController.swift
//  SavingData
//
//  Created by Germán Santos Jaimes on 10/2/18.
//  Copyright © 2018 iosLab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var caja: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        let defaults = UserDefaults.standard
        
        if let dato = defaults.object(forKey: "dato") as? String{
            caja.text = dato
        }
    }

    @IBAction func guardar(_ sender: UIButton) {
        let defaults = UserDefaults.standard
        
        if let valor = caja.text{
            defaults.set(valor, forKey: "dato")
        }
        
        
        
        
    }
    
}

