//: Playground - noun: a place where people can play

import UIKit

var nombre: String? = "german"

print(nombre!)

//optional binding
if let name = nombre{
    print("Hay un valor en nombre y es: \(name)")
}else{
    print("Pues no hay valor")
}

func evaluaParams( param: String?){
    guard let valido = param else{
        print("No hay valores")
        return
    }
    print(valido)
    
}


evaluaParams(param: nombre)

var nombreCompleto : String = nombre ?? "no tiene nombre"
print(nombreCompleto)






