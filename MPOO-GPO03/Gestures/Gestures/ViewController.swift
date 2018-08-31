//
//  ViewController.swift
//  Gestures
//
//  Created by Germán Santos Jaimes on 8/22/18.
//  Copyright © 2018 iosLab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func tapAction(_ sender: UITapGestureRecognizer) {
        
        let x = sender.location(in: view).x
        let y = sender.location(in: view).y

        view.backgroundColor = UIColor(red: x/400, green: y/400, blue: (x-y)/400, alpha: 1.0)
        
        let vista = SecondViewController()
        
    }
    

}

