//
//  SecondViewController.swift
//  TableView1
//
//  Created by Germán Santos Jaimes on 8/30/18.
//  Copyright © 2018 iosLab. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var name: UILabel!
    
    var vieneDeVistaUno: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        name.text = vieneDeVistaUno
    }

    

}
