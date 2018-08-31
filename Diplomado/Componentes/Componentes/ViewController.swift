//
//  ViewController.swift
//  Componentes
//
//  Created by Germán Santos Jaimes on 8/18/18.
//  Copyright © 2018 iosLab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var foto: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        foto.image = UIImage(named: "coche2")
    }

    @IBAction func respondToTap(_ sender: UITapGestureRecognizer) {
    
    let location = sender.location(in: view)
        print(location)
        
    }
    


}

