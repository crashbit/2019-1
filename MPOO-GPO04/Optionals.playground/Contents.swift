//: Playground - noun: a place where people can play

import UIKit

// OPTIONALS
var nombre: String? = nil

// unwraping forced
// print(nombre!)

// optional binding
if let nombre = nombre{
    print("ESto es un nombre: \(nombre)")
}else{
    print("No hay nombre" )
}


let segundoNombre: String = nombre ?? "Sin nombre"
print(segundoNombre)

func validaNombre(nombre: String?){
    guard let otroNombre = nombre else {
        return
    }
    print("existe un valor en \(otroNombre)")
}









