//
//  ViewController.swift
//  Gestures
//
//  Created by Germán Santos Jaimes on 8/23/18.
//  Copyright © 2018 iosLab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func gestureTap(_ sender: UITapGestureRecognizer) {
        
        print(sender.location(in: view))
        let x = sender.location(in: view).x
        let y = sender.location(in: view).y

        view.backgroundColor = UIColor(red: x/1000, green: y/1000, blue: 0.5, alpha: 1.0)
        
        
    }
    

}

