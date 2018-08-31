//: [Previous](@previous)

import Foundation

var nombres : [String] = ["Luis", "Paco", "Hugo"]
var otrosNombres = ["Fer", "Mary", "Luis"]
var otraForma : [String] = []
var otraFormaMas : Array<String> = []
var unaMas = [Int]()



var numeros = [4, 5, 6]
if numeros.contains(5){
    print("Ese elemento existe")
}

var myArray = [Int](repeating: 0, count: 100)
myArray.count
myArray.isEmpty
myArray[1] = 4

myArray.append(100)
dump(myArray)
myArray += [88, 93]
myArray.insert(58, at: 0)
myArray.remove(at: 2)
myArray.removeLast()
myArray.removeAll()

var array1 = [1, 2, 3]
var array2 = [4, 5, 6]

myArray = array1 + array2

let containerArray = [array1, array2]



//: [Next](@next)
