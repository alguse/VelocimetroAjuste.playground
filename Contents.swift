//: Playground - noun: a place where people can play

import UIKit

enum Velocidades : Int{
    
    case Apagado = 0, VelocidadBaja = 20,VelocidadMedia = 50,VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades){
        self = velocidadInicial
    }
}

class Auto{

    var velocidad : Velocidades

    init()
    {
        self.velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena: String){
        var actual : Int
        var mensaje : String

        if velocidad.rawValue == 0 {
            self.velocidad = .VelocidadBaja
            mensaje =  "Apagado"
            actual=20
        }else
        if velocidad.rawValue == 20 {
            self.velocidad = .VelocidadMedia
            mensaje = "Velocidad Baja"
            actual=50
        }else
        if velocidad.rawValue == 50 {
            self.velocidad = .VelocidadAlta
            mensaje = "Velocidad Media"
            actual=120
        }else{
            self.velocidad = .VelocidadMedia
            mensaje = "Velocidad Alta"
            actual=50
        }
    
        return (actual, mensaje)
    }
}

var auto = Auto()

for i in 1...20{
    var res = auto.cambioDeVelocidad()
    print("\(res.actual),\(res.velocidadEnCadena)")
}