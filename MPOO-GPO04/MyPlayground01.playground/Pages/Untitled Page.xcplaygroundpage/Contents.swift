//: Playground - noun: a place where people can play

import UIKit

var ingeniero = "guapo"
ingeniero = "feo"
type(of: ingeniero)

let ingeniera = "fea"
//ingeniera = "bonita"

/*
 Int
 String
 Double
 Float
 Bool
 */


var edad1 = 10
var edad2 : Int = 10
var edad3 = Int(10.0)
var edad4 = 10 as Int

var decimal = 10.0

/*
 + - / * %
*/

"pedro " + "jimenez"

var x = 10
var y = 2.5
 x + Int(y)
Double(x) + y

var counter = 1
counter += 1
counter -= 1
counter *= 5
counter /= 2

var millon = 1_000_000
var 🦄 = "unicornio"
var perrito = "🐶"

var vocal: Character = "A"
type(of: vocal)

var name = "German"
var edad = "🧟‍♀️"
var message = "Hola mundo yo me llamo \(name) y tengo sueño y tengo  \(edad) años"

print(message)

var multiLinea = """
lineas 1
lineas 2
lineas 3
"""
print(multiLinea)

// TUPLAS

var tupla = (3, 4, 5, 6)
tupla.0
tupla.2

var tupla2 : (x:Int, y:Int, z: Int) = (9, 8 , 5)
tupla2.x
tupla2.z

var tupla3 = (5, 7.8, "hola mundo")

var coordenadas3D = (x:5, y:8, z:20)
var coords = coordenadas3D
var (x1, y1, z1) = coordenadas3D
x1
var (x2, y2, _) = coordenadas3D
coordenadas3D.x = 23



























