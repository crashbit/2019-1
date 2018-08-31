//
//  ViewController.swift
//  Proyecto1
//
//  Created by Germán Santos Jaimes on 8/16/18.
//  Copyright © 2018 iosLab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var slider2: UISlider!
    
    @IBOutlet weak var slider3: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func sliderMoved(_ sender: UISlider) {
        
        var value1 = CGFloat(slider.value)
        
        var value2 = CGFloat(slider2.value)
        
        var value3 = CGFloat(slider3.value)
        
        view.backgroundColor = UIColor(red: value1, green: value2, blue: value3, alpha: 1.0)
    }
    

}

