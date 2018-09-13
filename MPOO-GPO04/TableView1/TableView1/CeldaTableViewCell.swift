//
//  CeldaTableViewCell.swift
//  TableView1
//
//  Created by Germán Santos Jaimes on 9/13/18.
//  Copyright © 2018 iosLab. All rights reserved.
//

import UIKit

class CeldaTableViewCell: UITableViewCell {

    @IBOutlet weak var titulo: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 4
        layer.borderColor = UIColor.red.cgColor
    }

}
