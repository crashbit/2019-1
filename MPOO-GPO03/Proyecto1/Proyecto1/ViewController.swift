//
//  ViewController.swift
//  Proyecto1
//
//  Created by Germán Santos Jaimes on 8/15/18.
//  Copyright © 2018 iosLab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var coche: UIImageView!
   
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func sliderModev(_ sender: UISlider) {
        
        var valor = slider.value
        
        if valor < 0.3{
            coche.image = UIImage(named: "coche1")
        }else if valor > 0.31 && valor < 0.60{
            coche.image = UIImage(named: "coche2")
        }else{
            coche.image = UIImage(named: "coche3")
        }
        
    }
    
}

