object cuentaCorriente {
	var property saldo
	method depositar(importe){saldo = saldo + importe}
	method extraer(importe){saldo = saldo - importe}
}

object cuentaConGastos{
	var property saldo
	method depositar(importe){saldo = (saldo + importe) - 20}
	method extraer(importe){}
}

object cuentaCombinada{
	var property cuentaPrimaria = null
	var property cuentaSecundaria = null
	
	method depositar(importe){}
	method extraer(importe){}
	method saldo(){return cuentaPrimaria.saldo() + cuentaSecundaria.saldo()}
}
