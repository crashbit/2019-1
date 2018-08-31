//
//  ViewController.swift
//  HolaMundo
//
//  Created by Germán Santos Jaimes on 8/15/18.
//  Copyright © 2018 iosLab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var etiqueta: UILabel!
    
    @IBOutlet weak var slider: UISlider!
    
    var clicks = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.cyan
        
        etiqueta.text = "Hola"
    }

   
    @IBAction func clickme(_ sender: UIButton) {
        clicks += 1
        etiqueta.text = "click \(clicks)"
        
        print(slider.value)
    }
    
    @IBAction func sliderMove(_ sender: UISlider) {
        
        print(slider.value)
        
        view.backgroundColor = UIColor(red: CGFloat(slider.value), green: CGFloat(slider.value), blue: CGFloat(slider.value), alpha: 1.0)
    }
    
}

