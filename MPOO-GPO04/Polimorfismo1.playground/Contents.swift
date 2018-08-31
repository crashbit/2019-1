//: Playground - noun: a place where people can play

import UIKit

struct Alumno{
    var nombre: String
    
    func estudiar(materia: String){
        print("Estudiando la materia: \(materia)")
    }
    
    func estudiar(en materia: String){
        print("Estudiando en: \(materia)")
    }
    
    func estudiar(){
        print("Alumno estudiando")
    }
    
    func estudiar(horas: Int){
        print("Alumno estudiando \(horas)")
    }
}

var ariana = Alumno(nombre: "Ariana")
ariana.estudiar()

