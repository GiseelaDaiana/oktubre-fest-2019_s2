import Cervezas.*
import jarra.*
import Carpas.*
import paises.*

class Personas {
	var property peso 
	const property  jarrasDeCervezaCompradas = []
	var property nivelDeAguante
	var property leGustaMusicaTradicional 
	var property nacionalidad 
	
	method comprarJarra(jarra){
		jarrasDeCervezaCompradas.add(jarra)
	}
	method personaEbria(){
		return (self.cantidadDeAlcoholIngerido() * self.peso()) > self.nivelDeAguante()
	}
	method ebrioEmpedernido(){
		return jarrasDeCervezaCompradas.all({jarra => jarra.cantidadDeLitros()==1})
	}
	
	method cantidadDeAlcoholIngerido(){
		return  jarrasDeCervezaCompradas.sum({jarra => jarra.cantidadDeAlcohol()})
		
	}
	method meGustaCervezadeMarca(marca){
		return nacionalidad.meGustaLaCerveza(marca)
	}
	/*gustosDeCarpas */
	method quiereEntrarEnCarpa(carpa){
	  return self.meGustaCervYMusicaDeCarpa(carpa) and self.nacionalidad().meGustaCantEnCarpa(carpa)
	}
	
	method meGustaCervYMusicaDeCarpa(carpa){
		return self.meGustaCervezadeMarca(carpa.marcaDeCerveza()) and self.leGustaMusicaTradicional() == carpa.tieneBandaDeMusica()
	}
    method esPatriota(){
    	return  self.jarrasDeCervezaCompradas().all({jarra => jarra.paisDeOrigen() == self.nacionalidad().paidDeOrig()})
    }
	
	
}




