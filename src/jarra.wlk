import Cervezas.*
class Jarra {
	var property cantidadDeLitros
	var property cerveza 
	
	
	method paisDeOrigen() = self.cerveza().paisDeOrigen()
	
	
	
	method cantidadDeAlcohol(){
		return self.cantidadDeLitros() * cerveza.alcohol()
	}
	
	
}
