//: Playground - noun: a place where people can play

import UIKit

struct Alumno{
    var numCuenta: String
    var nombre: String
    var edad: Int
    
    func estudiar(){
        print("Alumno estudiando")
    }
    
    func leer(){
        print("Alumno leyendo")
    }
    
    init(nombre: String, numCuenta: String, edad: Int){
        self.nombre = nombre
        self.numCuenta = numCuenta
        self.edad = edad
    }
    
    init(edad: Int){
        self.nombre = "nobody"
        self.edad = edad
        self.numCuenta = "00000000"
    }
    
    mutating func modificadEdad(){
        self.edad = self.edad + 1
    }
}

var juan = Alumno(nombre: "Juan", numCuenta: "99409930", edad: 22)
var erick = Alumno(edad: 27)

var pedro = juan
juan.edad = 18
dump(pedro)
dump(juan)


