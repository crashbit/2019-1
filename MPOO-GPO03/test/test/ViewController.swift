//
//  ViewController.swift
//  test
//
//  Created by Germán Santos Jaimes on 10/2/18.
//  Copyright © 2018 iosLab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var sliderRojo: UISlider!
    @IBOutlet weak var vista: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func colorea(_ sender: UISlider) {
        var alpha = slider.value
        var rojo = sliderRojo.value
        vista.backgroundColor = UIColor(red:CGFloat(rojo), green: 0.6, blue: 0.5, alpha: CGFloat(alpha))
    }
    
}

