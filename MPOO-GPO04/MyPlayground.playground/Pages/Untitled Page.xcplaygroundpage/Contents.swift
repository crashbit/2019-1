//: Playground - noun: a place where people can play

import UIKit

struct Alumno{
    var nombre: String
    var edad: Int
    var promedio: Double{
        willSet{
            print("El nuevo promedio es: \(newValue)")
        }
        
        didSet{
            print("El promedio anterior era: \(oldValue)")
        }
    }
    var becaSlim: Int{
        return Int(promedio * 100.0)
    }
    
    init(edad: Int){
        self.edad = edad
        self.nombre = "don programador"
        self.promedio = 0.0
    }
    
    init(nombre: String, edad: Int){
        self.nombre = nombre
        self.edad = edad
        self.promedio = 0.0
    }
    
    mutating func evaluaEdad(){
        self.edad = self.edad + 1
    }
}


var luis = Alumno(edad: 15)
var julio = Alumno(nombre: "julio", edad: 22)
luis.nombre
julio.nombre

var mary = luis
mary.nombre = "Mary"
mary.nombre
luis.nombre

luis.promedio = 8.9
print("La beca de luis es: \(luis.becaSlim)")
luis.promedio = 6.8
print("La beca de luis es: \(luis.becaSlim)")


