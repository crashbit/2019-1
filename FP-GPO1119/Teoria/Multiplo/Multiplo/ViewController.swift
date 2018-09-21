//
//  ViewController.swift
//  Multiplo
//
//  Created by Germán Santos Jaimes on 9/19/18.
//  Copyright © 2018 iosLab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var caja: UITextField!
    
    @IBAction func boton(_ sender: UIButton) {
        var numero = Int(caja.text!)
        
        if numero! % 3 == 0{
            resultado.text = "Si es multiplo"
        }else{
            resultado.text = "\(numero!) No es multiplo"
        }
        
    }
    
    @IBOutlet weak var resultado: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    

}

