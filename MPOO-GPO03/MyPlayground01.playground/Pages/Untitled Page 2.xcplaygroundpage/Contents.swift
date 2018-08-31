//: [Previous](@previous)

import Foundation

var entero : Int = 3
var decimal : Double = 15.4

entero = Int(decimal)

let wantDouble = 3.0
type(of: wantDouble)

let actuallyDouble = Double(3)
type(of: actuallyDouble)

let strictDouble : Double = 3
type(of: strictDouble)

let otherDouble = 3 as Double
type(of: otherDouble)

// Cadenas

var cadena : Character = "a"
type(of: cadena)

var message = "Hola " + " mundo "
var name = "German"

message += name


let exclamationMark : Character = "!"
message += String(exclamationMark)

// Interpolation
message = "Hola mundo me llamo \(name)"

var age : Int = 20

message = "Yo soy \(name) y tengo \(age) años"

let oneThird = 1.0 / 3.0
let oneThirdLonString = "Un tercio es: \(oneThird) como decimal"

let multiLine = """
Esta es una multilínea
y solo escribiré 2 líneas
adios
"""
print(multiLine)

// Tuplas
let coordinates : (Int, Int) = ( 3, 4)
coordinates.1

let coordinatesNamed : (x: Int, y: Int) = (3, 5)
coordinatesNamed.x

let coordinates3D = (x:2, y:3, z:4)

let (x3, y3, z3) = coordinates3D
print(z3)

let (x4, y4, _) = coordinates3D





//: [Next](@next)
