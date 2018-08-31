//: [Previous](@previous)

import Foundation

class Academico{
    var numTrabajador: String
    
    init(numTrabajador: String){
        self.numTrabajador = numTrabajador
    }
    
    func mitin(){
        print("academico en mitin")
    }
}

class Profesor: Academico{
    var nombre: String
    var edad: Int
    
    init(nombre: String, edad: Int){
        self.nombre = nombre
        self.edad = edad
        super.init(numTrabajador: "2222222")
    }
    
    override func mitin(){
        print("Los profes no van a mítines")
    }
}

let julio = Profesor(nombre: "Julio", edad: 22)
let ariana = julio
ariana.nombre = "Ariana"
julio.nombre
julio.numTrabajador

julio.mitin()

//: [Next](@next)
