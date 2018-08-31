//: Playground - noun: a place where people can play

import UIKit

struct Empleado{
    var nombre: String
    var sueldo: Double{
        willSet{
            print("El sueldo nuevo es: \(newValue) ")
        }
        didSet{
            print("El sueldo anterior era de: \(oldValue)")
        }
    }
    var impuestos: Double{
        return sueldo * 0.16
    }
    
    init(nombre: String, sueldo: Double){
        self.nombre = nombre
        self.sueldo = sueldo
    }
    
    func trabaja(){
        print("Godin trabajando")
    }
    
    func trabaja(en donde: String){
        print("Godin trabajando en: \(donde)")
    }
    
    func trabaja(para patron: String){
        print("Godin trabajando para don(ña): \(patron)")
    }
}

var godin = Empleado(nombre: "Luis", sueldo: 900.50)
godin.sueldo = 700
godin.trabaja(en: "la casa")
godin.trabaja()
godin.trabaja(para: "Las chicas superpoderosas")

