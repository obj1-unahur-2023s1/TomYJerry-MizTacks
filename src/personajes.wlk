object jerry{
	var peso = 3
	method posicion() = 10 //otra cosa que es debatible si se modifica (?
   	method velocidad() = 10 - peso
   	// method velocidad() = 7 xq el peso no varia
   	method pesoNuevo(otroPeso){ peso = otroPeso } //para que WLK no se queje sobre constante/variable	
}

object tom{
	var posicion = 0
	var energia = 80
	
	method velocidad() = 5+(energia/10)
	method posicion() = posicion
 	method energia() = energia
 	method esMasVeloz(raton) = self.velocidad() > raton.velocidad()
 	method correrA(raton){
 		const energiaFinal = (energia - 0.5*self.velocidad()*(raton.posicion()-posicion).abs())
 		if (energiaFinal>=0){
 		   energia = energiaFinal
 		   posicion = raton.posicion()
 		   }
 	}
}

object roboraton{	
	method velocidad() = 8
	method posicion() = 12
}