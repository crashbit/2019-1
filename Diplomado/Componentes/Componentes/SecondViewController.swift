//
//  SecondViewController.swift
//  Componentes
//
//  Created by Germán Santos Jaimes on 8/18/18.
//  Copyright © 2018 iosLab. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBAction func keyboardReturnTapped(_ sender: UITextField) {
        
        if let text = sender.text{
            print(text)
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func textChanged(_ sender: UITextField) {
        
        if let text = sender.text{
            print(text)
        }
    }
    
    
}
