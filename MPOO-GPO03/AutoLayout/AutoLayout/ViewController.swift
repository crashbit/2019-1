//
//  ViewController.swift
//  AutoLayout
//
//  Created by Germán Santos Jaimes on 9/19/18.
//  Copyright © 2018 iosLab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var etiqueta : UILabel = {
        let lb = UILabel()
        lb.text = "Label"
        lb.font = UIFont(name: "Arial", size: 40.0)
        lb.translatesAutoresizingMaskIntoConstraints = false
        return lb
    }()
    
    var boton : UIButton = {
        let bt = UIButton()
        bt.setTitle("Apuntar score", for: .normal)
        bt.backgroundColor = UIColor.red
        bt.translatesAutoresizingMaskIntoConstraints = false
       return bt
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(etiqueta)
        view.addSubview(boton)
        etiqueta.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        etiqueta.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        boton.topAnchor.constraint(equalTo: etiqueta.bottomAnchor, constant: 20).isActive = true
        boton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
    }

    


}

