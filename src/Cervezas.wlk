class Cervezas {
	var property lupulo
	var property paisDeOrigen
	
	
	method alcohol() = self.graduacion()/100
	method graduacion() = 0
}

class CervezaRubia inherits Cervezas{
	
}
class CervezaRoja inherits CervezaNegra{
	override method graduacion(){
		return super()* 1.25
	}
	
	
}
class CervezaNegra inherits Cervezas{
	const property graduacionReglamentaria = graduacionMundial
	                                         
	override method graduacion(){
	   return (self.lupulo() *2).min(self.graduacionReglamentaria().graduacion())
	}
		 	
}

object graduacionMundial{
	var property graduacion 
	
}