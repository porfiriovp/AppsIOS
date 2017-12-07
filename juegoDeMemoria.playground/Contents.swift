/*Juego de Memoria
Generar un rango de 0 a 100, incluye el número 100 en el rango.
Tienes que iterar el rango completo, utilizando la sentencia for para obtener cada número del rango y aplicar las siguientes reglas de impresión.
Al evaluar cada número debes aplicar las siguientes reglas:
- Si el número es divisible entre 5, imprime: # el número  + “Bingo!!!”
- Si el número es par, imprime: # el número + “par!!!”
- Si el número es impar, imprime: # el número + “impar!!!”
- Si el número se encuentra dentro de un rango del 30 al 40, imprime: # el número +  “Viva Swift!!!”
*/

import UIKit



for numeros in 0...100 {
    
    var num = numeros;
    
    switch numeros {
    
    case num where (num >= 30 && num <= 40) && num % 2 == 0:
        print("\(num)\tViva Swift!!!\tPar")
    case num where (num >= 30 && num <= 40) && num % 2 != 0:
        print("\(num)\tViva Swift!!!\tImpar")
    case num where num % 5 == 0 && num % 2 == 0:
         print("\(num)\tBingo!!!\tPar")
    case num where num % 5 == 0 && num % 2 != 0:
        print("\(num)\tBingo!!!\tImPar")
    case num where num % 2 == 0:
        print("\(num)\tPar")
    case num where num % 2 != 0:
        print("\(num)\tImpar")
    default:
        print("\(num)\tNo existe el numero")
    }
    }


