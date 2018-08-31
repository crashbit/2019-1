//: [Previous](@previous)

import Foundation

for index in 1..<5{
    print(index)
}

for index in stride(from: 10, to: 1, by: -1){
    print(index)
}

for _ in 1...5{
    print("Hola")
}

for letra in "Hola mundo".reversed(){
    print(letra)
}

var nombres = ["Hugo", "Paco", "Luis"]

for nombre in nombres{
    print(nombre)
}

for (index, nombre) in nombres.enumerated(){
    print(index, nombre)
}

var i = 0
while i < 10 {
    i += 1
    print(i)
}



//: [Next](@next)
