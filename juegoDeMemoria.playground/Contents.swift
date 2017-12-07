//: Playground - noun: a place where people can play

import UIKit

var numeros = 0...100
numeros.count

for num in numeros {
    
    switch num {
    case 5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60, 65, 70, 75, 80, 85, 90, 95, 100:
        print("Bingo!!!")
    case 0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38, 40, 42, 44:
        print("Par")
    case 1, 3, 5, 7, 9, 11:
            print("Impar")
    case 18...27:
        print("Viva Swift!!!")
    default:
        print("no existe el numero")
    }
    }


