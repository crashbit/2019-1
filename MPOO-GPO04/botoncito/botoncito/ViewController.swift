//
//  ViewController.swift
//  botoncito
//
//  Created by Germán Santos Jaimes on 9/13/18.
//  Copyright © 2018 iosLab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func clickOn(_ sender: TipoBoton) {
        
        sender.pulseAnimation()
    }
    

}

