//
//  ViewController.swift
//  ViewsNavigation
//
//  Created by Germán Santos Jaimes on 8/28/18.
//  Copyright © 2018 iosLab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func secondView(_ sender: UIButton) {
        
        let segunda = SecondViewController()
        
        present(segunda, animated: true, completion: nil)
        
    }
    

}

