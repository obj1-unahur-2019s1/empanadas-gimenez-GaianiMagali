object galvan {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
//	var property sueldo = 15000
	var property sueldo = 15000
	var dinero = 0
	var deuda = 0

	// method sueldo() { return sueldo }
//	method sueldo() { sueldo = dinero}
	method gastar(cuanto) {
		// le alcanza la plata para todo el gasto
		if (dinero >= cuanto) {
			dinero -= cuanto
		} else {
			// le alcanza la plata para una parte
			if (dinero > 0) {
				deuda += cuanto - dinero
				dinero = 0
			} else {
				// no tiene plata, pura deuda
				deuda += cuanto
			}
		}
		}
	 method cobrarSueldo() {
		// tiene deuda,usa todo el sueldo 
		// tiene deuda,no le alcanza el sueldo
		if (deuda >= sueldo) {
			deuda -= sueldo // - sueldo
		} else {
			// tiene deuda,le sobra sueldo
			// no tiene deuda
			dinero += sueldo - deuda
			deuda = 0
		}
		}
// deuda -= deuda
}
	  
object baigorria {

	var toTalDineroCobrado = 0
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15

	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}

	method sueldo() = { return cantidadEmpanadasVendidas * montoPorEmpanada }

	method cobrarSueldo() {
		toTalDineroCobrado += self.sueldo()
	}

	method toTalDineroCobrado() {
		return toTalDineroCobrado
	}

}

object gimenez {
	var dinero = 300000
	method dinero() { return dinero }
	method pagarA( empleado ) {
	dinero -= empleado.sueldo()
	empleado.cobrarSueldo()
		}
}



