object belga{
	var property paidDeOrig = "Belgica"
	method meGustaLaCerveza(cerveza){
		return cerveza.lupulo() > 4
	}
	method meGustaCantEnCarpa(carpa){
		return true
	}

}
object checo{
	var property paidDeOrig = "Republica Checa"
	method meGustaLaCerveza(cerveza){
		return cerveza.graduacion() > 8
	}
	method meGustaCantEnCarpa(carpa){
		return true
	}
	
}
object aleman{
	var property paidDeOrig = "Alemania"
	var property enCarpaMeGustaCant = 1
	method meGustaLaCerveza(cerveza){
		return true
	}
	method meGustaCantEnCarpa(carpa){
		return self.enCarpaMeGustaCant() < carpa.personasEnCarpa().size()
		
	}
	
}
