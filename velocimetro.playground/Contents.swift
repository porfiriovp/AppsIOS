/* Proyecto Velocimetro
 Crea un playground que contenga los elementos para representar un velocímetro de un automóvil. Recuerda que estamos practicando la programación orientada a objetos y primero debes diseñar la clase, enumeraciones o estructuras para llevarlas a un aplicación móvil.
 
 Pruebas de la clase:
 
 - Una salida válida con cinco iteraciones es:
 
 0 , Apagado
 
 20, Velocidad baja
 
 50, Velocidad media
 
 120, Velocidad alta
 
 50, Velocidad media
 
 120, Velocidad alta
 
 50, Velocidad media
 
 120, Velocidad alta
 
 50, Velocidad media
 
 … etc.
*/
 
import UIKit

enum Velocidades :Int {
    case apagado = 0, velocidadBaja = 20, velocidadMedia = 50, velocidadAlta = 120
     init( velocidadInicial : Velocidades ) {
        self = velocidadInicial
    }
}

class Auto {
    var velocidad : Velocidades
    init() {
      velocidad = Velocidades(velocidadInicial: .apagado)
    
}

func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String) {
    var mensaje = ""
    let actual = velocidad.rawValue
    
    switch velocidad {
    case .apagado:
        velocidad = .velocidadBaja
        mensaje = "Apagado"
    case .velocidadBaja:
        velocidad = .velocidadMedia
        mensaje = "VelocidadBaja"
    case .velocidadMedia:
        velocidad = .velocidadAlta
        mensaje = "VelocidadMedia"
    case .velocidadAlta:
        velocidad = .velocidadMedia
        mensaje = "VelocidadAlta"
    }
    return (actual, mensaje)
}
}

let auto = Auto ()
for i in 1...20 {
    let resultado = auto.cambioDeVelocidad()
    print("\(i).  \(resultado.actual)  ,   \(resultado.velocidadEnCadena)")
}
