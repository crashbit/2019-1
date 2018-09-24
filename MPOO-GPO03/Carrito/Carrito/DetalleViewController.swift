//
//  DetalleViewController.swift
//  Carrito
//
//  Created by Germán Santos Jaimes on 9/24/18.
//  Copyright © 2018 iosLab. All rights reserved.
//

import UIKit

class DetalleViewController: UIViewController {

    var producto : Producto!
    @IBOutlet var desc: UILabel!
    @IBOutlet var imagen: UIImageView!
    
    var carrito: [Producto]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        desc.text = producto.desc
        imagen.image = UIImage(named: producto.imagen)
        
    }
    
    func comprar(){
        carrito.append(producto)
    }

}
