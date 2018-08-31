//
//  SecondViewController.swift
//  ViewsNavigation
//
//  Created by Germán Santos Jaimes on 8/28/18.
//  Copyright © 2018 iosLab. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.red
    }

    @IBAction func retirar(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
      
    }
    
}
