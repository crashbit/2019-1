//
//  ViewController.swift
//  cambiaColores
//
//  Created by Germán Santos Jaimes on 9/28/18.
//  Copyright © 2018 iosLab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var vista: UIView!
    
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var sliderRojo: UISlider!
    
    
    @IBOutlet weak var sliderAzul: UISlider!
    @IBOutlet weak var sliderVerde: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        vista.backgroundColor = UIColor.red
    }
    
    
    @IBAction func cambiaColor(_ sender: UISlider) {
        
        var valor = slider.value
        var valorRojo = sliderRojo.value
        var valorVerde = sliderVerde.value
        var valorAzul = sliderAzul.value
        vista.backgroundColor = UIColor(red: CGFloat(valorRojo), green: CGFloat(valorVerde), blue: CGFloat(valorAzul), alpha: CGFloat(valor))
        
    }
    

}

