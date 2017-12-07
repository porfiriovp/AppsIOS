//Proyecto Juego de Memoria

import UIKit



for numeros in 0...100 {
    
    var num = numeros;
    
    
    switch numeros {
    
    case num where num >= 30 && num <= 40:
        print("\(num)\tViva Swift!!!")
    case num where num % 5 == 0 && num % 2 == 0:
         print("\(num)\tBingo!!!\tPar")
    case num where num % 5 == 0 && num % 2 != 0:
        print("\(num)\tBingo!!!\tImPar")
    case num where num % 2 == 0:
        print("\(num)\tPar")
    case num where num % 2 != 0:
        print("\(num)\tImpar")
    default:
        print("\(num)\tno existe el numero")
    }
    }


