import Cervezas.*
import jarra.*
import personas.*
class Carpa {
	var property limiteDeGente = 0
	var property tieneBandaDeMusica
	const property jarrasDeCerveza = []
	var property marcaDeCerveza
	var property  personasEnCarpa = []
	
	method entraUnaPersona(persona){
		personasEnCarpa.add(persona)
	}
	
	method dejarEntrar(persona){
		return (self.personasEnCarpa().size() < self.limiteDeGente()) and (not persona.personaEbria())
	}
	
	method  puedeEntrar(persona){
		return self.dejarEntrar(persona) and persona.quiereEntrarEnCarpa(self)
	}
	method entraEnCarpa(persona){
		if (self.puedeEntrar(persona)){
			self.entraUnaPersona(persona)
		}else if(persona.quiereEntrarEnCarpa(self)){
			self.error("esta Carpa se reseva el derecho de admision")
		}
	}

	method servirJarraDe_A_(medida, persona ){
	    const jarraX = new Jarra(cerveza=marcaDeCerveza,cantidadDeLitros= medida)
		if ( self.personasEnCarpa().contains(persona) ){
		    persona.comprarJarra(jarraX)
		 }else{ 
		 	self.error("esta persona no es parte de la Carpa")
			}
	}
	method cantDeEbriosEmpedernidos(){
		return personasEnCarpa.count({ persona => persona.ebrioEmpedernido()})
	}
	

}
	