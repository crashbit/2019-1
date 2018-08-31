//
//  ViewController.swift
//  holamundo
//
//  Created by Germán Santos Jaimes on 8/14/18.
//  Copyright © 2018 iosLab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var etiqueta: UILabel!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //view.backgroundColor = UIColor.red
        
    }

    @IBAction func clickme(_ sender: UIButton) {
        
        etiqueta.text = "ola i hnadioz..."
        
    }
    


}

