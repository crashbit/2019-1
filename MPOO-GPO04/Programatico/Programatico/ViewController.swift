//
//  ViewController.swift
//  Programatico
//
//  Created by Germán Santos Jaimes on 9/18/18.
//  Copyright © 2018 iosLab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

     let etiqueta : UILabel = {
        let lb = UILabel()
        lb.text = "Hola mundo"
        lb.textColor = UIColor.black
        lb.font = UIFont(name: "Arial", size: CGFloat(60))
        // Habilitamos el uso de constraints
        lb.translatesAutoresizingMaskIntoConstraints = false
        return lb
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.red
        
        view.addSubview(etiqueta)
        
        etiqueta.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        //etiqueta.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        etiqueta.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
    }

    

}

