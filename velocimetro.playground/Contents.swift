/*

Velocimetro de un automovil. Creado por David Fernandez.
 
Enunciado:
 
Crea un playground donde practiques los conceptos que has aprendido de clases y enumeraciones al especificar los elementos que pueden representar un velocÌmetro de un auto.
Instructions

Crea un playground que contenga los elementos para representar un velocÌmetro de un automÛvil. Recuerda que estamos practicando la programaciÛn orientada a objetos y primero debes diseÒar la clase, enumeraciones o estructuras para llevarlas a un aplicaciÛn mÛvil. øQuÈ debes de realizar?

Declara la enumeraciÛn: Velocidades, sus valores ser·n de tipo Int.

La enumeraciÛn Velocidades cuenta con los siguientes elementos y sus respectivos valores:

- Apagado = 0, representa la velocidad 0.

- VelocidadBaja = 20, representa una velocidad de 20km por hora.

- VelocidadMedia = 50, representa una velocidad de 50km por hora

- VelocidadAlta = 120, representa una velocidad de 50km por hora.

- Adem·s, debes de declarar un inicializador que recibe un velocidad:

- init( velocidadInicial : Velocidades )

- El inicializador se debe asignar a self el valor de velocidadInicial

Declara la clase: Auto

La clase Auto tiene los siguientes atributos:

- Una variable que sea una instancia de la enumeraciÛn Velocidades, llamada: velocidad.

Las funciones o mÈtodos que define la clase Auto son las siguientes:

- init( ), agrega la funciÛn inicializadora que crea una instancia de Velocidades: velocidad, debe iniciar en Apagado. Recuerda que la enumeraciÛn tiene su funciÛn inicializadora.

- func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String), la funciÛn cambioDeVelocidad, cambia el valor de velocidad a la siguiente velocidad gradual, por ejemplo: Apagado cambia a VelocidadBaja, de VelocidadBaja cambia a VelocidadMedia, es decir cada ejecuciÛn cambia a la siguiente velocidad.. si llega a VelocidadAlta cambia a VelocidadMedia. Finalmente, la funciÛn debe regresar una tupla con la velocidad actual y una cadena con la leyenda de la velocidad correspondiente.

Pruebas de la clase:

- En el mismo playground prueba crea una instancia de la clase Auto, llamada auto.

- Itera 20 veces usando un for, llama a la funciÛn cambioDeVelocidad e imprime los valores de la tupla en la consola.

- Una salida v·lida con cinco iteraciones es:

0 , Apagado

20, Velocidad baja

50, Velocidad media

120, Velocidad alta

50, Velocidad media

120, Velocidad alta

50, Velocidad media

120, Velocidad alta

50, Velocidad media

etc

*/

import UIKit

enum Velocidades : Int{
    
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    
    init( velocidadInicial : Velocidades) {
        self = velocidadInicial
    }
}

class Auto {
    var velocidad : Velocidades
    
    init( ) {
        self.velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
    }
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena: String){
        var actual : Int
        var velocidadEnCadena: String
        
        switch self.velocidad{
        case .Apagado:
            actual = self.velocidad.rawValue
            velocidadEnCadena = "Apagado"
            self.velocidad = Velocidades.VelocidadBaja
        case .VelocidadBaja:
            actual = self.velocidad.rawValue
            velocidadEnCadena = "Velocidad baja"
            self.velocidad = Velocidades.VelocidadMedia
        case .VelocidadMedia:
            actual = self.velocidad.rawValue
            velocidadEnCadena = "Velocidad media"
            self.velocidad = Velocidades.VelocidadAlta
        case .VelocidadAlta:
            actual = self.velocidad.rawValue
            velocidadEnCadena = "Velocidad alta"
            self.velocidad = Velocidades.VelocidadMedia
        }
        
        return (actual: actual, velocidadEnCadena: velocidadEnCadena)
    }
}

let auto = Auto()

for i in 1...20 {
    let result = auto.cambioDeVelocidad()
    print ("\(result.actual), \(result.velocidadEnCadena)")
}
