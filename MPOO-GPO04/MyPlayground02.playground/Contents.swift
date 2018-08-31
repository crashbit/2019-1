//: Playground - noun: a place where people can play

import UIKit

// Control de flujo

if 3 > 4 {
    print("3 es mayor que 4")
}else if 3 == 4{
    print("3 es igual a 4")
}else{
    print("4 es mayor que 3")
}


var i = 0

while i < 10{
    print(i)
    i += 1
}

for _ in stride(from:10, to: 1, by: -1) {
    print("corre")
}

for index in "alumnos reprobados".reversed() {
    print(index)
}

// funciones
func nombreFuncion(){
    print("Esta es la funcion")
}

nombreFuncion()


func conParametro(a: Int){
    print("Usted imprime: \(a)")
}

conParametro(a: 10)

func multiplica(_ x: Int, por y: Int) -> Int{
    return x * y
}

multiplica(10, por: 20)

//   @IBOutlet
//   @IBAction



