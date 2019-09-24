import cosas.* 
import objects.*

object casaDePepeYJulian {
	const cosas = []
	var property cuentaUsando = null
	
	method gastarImporte(importe){cuentaUsando.extraer(importe)}
	method dineroDisponible(){return cuentaUsando.saldo()}
	method comprar(cosa){
		//hace
		cosas.add(cosa)
		self.gastarImporte(cosa.precio())
	}
	method cantidadDeCosasCompradas(){
		//devuelve un numero
		return cosas.size()
	}
	method tieneComida(){return cosas.any({cosa => cosa.esComida()})}//devuelve un bool
	method vieneDeEquiparse(){return cosas.last().esElectrodomestico() or cosas.last().precio() > 5000}//devuelve un bool
	method esDerrochona(){return cosas.sum({cosa => cosa.precio()}) > 9000}//devuelve un bool
	//method compraMasCara(){return cosas.max({cosa => cosa.precio()})}//devuelve objeto
	method electrodomesticosComprados(){return cosas.filter({cosa => cosa.esElectrodomestico()})}//devuelve una lista de objetos
	method malaEpoca(){return cosas.all({cosa => cosa.esComida()})}//retorna un bool
	//method queFaltaComprar(lista){return lista.filter({cosa => not cosas.contains(cosa)})}
	method faltaComida(){return cosas.count({cosa => cosa.esComida()}) > 2}//devuelve bool
	method gastoEnComida(){return cosas.filter({cosa => cosa.esComida()}).sum({cosa => cosa.precio()})}
	method hayElectrodomesticosBaratos(){return cosas.filter({cosa => cosa.esElectrodomestico()}).any({cosa => cosa.precio() > 3000})}
	method preciosDeElectrodomesticos(){return cosas.map({cosa => cosa.precio()})}
	method nivelEnAumento(){return cosas.last().precio() >= cosas.first().precio()}
	method primeraComidaComprada(){return cosas.filter({cosa => cosa.esComida()}).first()}
	method precioPromedioComida(){return cosas.sum({cosa => cosa.precio()}) / cosas.size()}
	method repitioCompra(){return cosas.any({cosa => cosas.occurrencesOf(cosa) > 1})}
	method tiene(cosa){return cosas.contains(cosa) or packComida.plato() == cosa or packComida.aderezo() == cosa or packRegalo.devolverPack().contains(cosa)}
	method aumentoCreciente(){return cosas.all({})}
}
