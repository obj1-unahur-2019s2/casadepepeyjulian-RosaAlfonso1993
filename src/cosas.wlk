object dolar{
	method cotizacion(){return 60}
}

object heladera {
	method precio() { return 20000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object cama {
	method precio() { return 8000 }
	method esComida() { return false }
	method esElectrodomestico() { return false }	
}

object tiraDeAsado {
	method precio() { return 350 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object paqueteDeFideos {
	method precio() { return 50 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object plancha {
	method precio() { return 1200 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
	//method esElectrodomestico() = true
}

object kiloMilanesa{
	var property precio = 260
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object salsaTomate{
	var property precio = 90
	method esComida() { return true }
	method esElectrodomestico() { return false }
}

object microondas{
	method precio(){return 4200}
	method esComida(){return false}
	method esElectrodomestico(){return true}
}

object kiloCebolla{
	method precio(){return 25}
	method esComida(){return true}
	method esElectrodomestico(){return false}
}

object computadora{
	method precio(){return 500 * dolar.cotizacion()}
	method esComida(){return false}
	method esElectrodomestico(){return true}
}

object packComida{
	var property plato
	var property aderezo
	method configurarPlatoYAderezo(unPlato, unAderezo){//refencia
		plato = unPlato
		aderezo = unAderezo
	}
	
	method precio(){
		return plato.precio() + aderezo.precio()
	}
	method esComida() { return true }
	method esElectrodomestico() { return false }
}

object packRegalo{
	var cosas = []
	
	method agregarLista(objeto){
		cosas.add(objeto)
	}
	method devolverPack(){
		return cosas
	}
	method precio(){
		return cosas.sum({cosa => cosa.precio()}) * 0.8
	}
	method esComida(){
		return cosas.all({cosa => cosa.esComida()})
	}
	method esElectrodomestico(){
		return cosas.any({cosa => cosa.esElectrodomestico()})
	}
}
