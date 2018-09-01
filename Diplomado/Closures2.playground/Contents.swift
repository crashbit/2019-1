//: Playground - noun: a place where people can play

import UIKit

let sumClosure = { (numbers: [Int]) -> Int in
    var total = 0
    
    for number in numbers{
        total = total + number
    }

    return total
}


let sum = sumClosure([1, 2, 3, 4, 5])
print(sum)

let printClosure = { () -> Void in
    print("Este closure no regresa nada y no recibe nada")
}

let printClosure2 = { (cadena: String) -> Void in
    print(cadena)
}

let printClosure3 = { () -> Int in
        return 3
}

var letras = ["a", "z", "x", "b", "w"]

letras.sorted()
letras.sorted{ (letra1, letra2) -> Bool  in
    return letra1 > letra2
}

letras.sorted{
    return $0 > $1
}

let nombres = ["Luis", "Juan", "Pedro", "Lola", "Manuel"]

let nombreCompleto = nombres.map{ (nombre) -> String in
    return nombre + " Swift"
}

let nombreCompleto2 = nombres.map{ $0 + " Swift"}

let numbers = [5, 6, 10, 22, 11, 33]

let numbersLessTen = numbers.filter{ (number) -> Bool in
    return number < 10
}

let numbersLessTen2 = numbers.filter{ $0 < 10 }

var total = 0

total = numbers.reduce(0) { (currentTotal, newValue) -> Int in
    return currentTotal + newValue
}

let total2 = numbers.reduce(0, { $0 + $1 })


