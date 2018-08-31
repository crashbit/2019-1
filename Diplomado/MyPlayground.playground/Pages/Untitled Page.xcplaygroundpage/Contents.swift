//: Playground - noun: a place where people can play

import UIKit

var valor = 4

func cambiaValor(otroNombre param: inout Int) -> Int{
    param += 1
    
    return param
}

struct Alumno{
    var nombre : String
    var edad : Int
    static var salud = "Sanito"
    var carrera : String = "Ing. Computacion" {
        willSet{
            print("Este será el nuevo valor \(newValue)")
        }
        didSet{
            print("Este fue el valor asignado \(oldValue)")
        }
    }
    
    mutating func cambiaValor(){
        nombre = "nobody"
    }
    
    init(nombre: String){
        self.nombre = nombre
        self.edad = 0
    }
    
    init(edad: Int){
        self.edad = edad
        self.nombre = "desconocido"
    }
    
    init(nombre: String, edad: Int){
        self.nombre = nombre
        self.edad = edad
    }
}

var luis = Alumno(nombre: "Luis")
luis.carrera = "Lic. Contaduria"
luis.carrera = "Trabajo Social"

var pedro = luis
pedro.nombre = "pedro"

dump(pedro)
dump(luis)







