object jerry{
	method velocidad() = 7 
	// 10 - peso(3) = 7
	method posicion() = 10
   	
}

object tom{
	var posicion = 0
	var energia = 80
	
	method velocidad() = 5+(energia/10)
	method posicion() = posicion
 	method esMasVeloz(raton) = self.velocidad() > raton.velocidad()
 	method correrA(raton){
 		energia -= (0.5*self.velocidad()*(raton.posicion()-posicion))
 		posicion = raton.posicion()
 	}
}

object roboraton{	
	method velocidad() = 8
	method posicion() = 12
}