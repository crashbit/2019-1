//
//  TipoBoton.swift
//  botoncito
//
//  Created by Germán Santos Jaimes on 9/13/18.
//  Copyright © 2018 iosLab. All rights reserved.
//

import UIKit

class TipoBoton: UIButton {

    override func awakeFromNib() {
        layer.cornerRadius = 25
        layer.frame.size = CGSize(width: 300, height: 300)
        
        pulseAnimation()
    }
    
    func pulseAnimation(){
        let pulse = CASpringAnimation(keyPath: "transform.scale")
        pulse.duration = 0.6
        pulse.fromValue = 0.95
        pulse.toValue = 1.0
        pulse.autoreverses = true
        pulse.repeatCount = 2
        pulse.initialVelocity = 0.5
        pulse.damping = 1.0
        
        let flash = CABasicAnimation(keyPath: "opacity")
        flash.duration = 0.5
        flash.fromValue = 1.0
        flash.toValue = 0.1
        flash.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        flash.autoreverses = true
        flash.repeatCount = 3
        
        let shake = CABasicAnimation(keyPath: "position")
        shake.duration = 0.5
    
        let fromPoint = CGPoint(x: center.x - 15, y: center.y)
        let fromValue = NSValue(cgPoint: fromPoint)
        
        let toPoint = CGPoint(x: center.x + 15, y: center.y)
        let toValue = NSValue(cgPoint: toPoint)
        
        shake.fromValue = fromValue
        shake.toValue = toValue
        
        shake.repeatCount = 2
        shake.autoreverses = true
            
        layer.add(shake, forKey: nil)
        layer.add(flash, forKey: nil)
        layer.add(pulse, forKey: nil)
    }
    

}
