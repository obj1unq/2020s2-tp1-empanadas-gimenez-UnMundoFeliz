/*
Modelar al dueño y a los dos empleados,
de forma tal que se pueda indicar: 
un cambio de sueldo de Galván, 
la venta de empanadas por parte de Baigorria, 
el pago de sueldo de cualquiera de los dos empleados. 
Y se pueda preguntar: 
el sueldo de Baigorria, y el importe actual en el fondo de Giménez
*/

object baigorria{
	var empanadasVendidas = 0;
	var cajaDeAhorro = 0; 
	
	method vender(cantidadDeEmpanadas){
		empanadasVendidas += cantidadDeEmpanadas;
	}
	
	method sueldo(){
		return empanadasVendidas*15;
	}
	
	method totalCobrado(){
		cajaDeAhorro += self.sueldo();
		empanadasVendidas = 0;
		return cajaDeAhorro
	}
}

object galvan{
	var sueldoActual = 15000;
	
	method sueldo(nuevoSueldo){
		sueldoActual = nuevoSueldo;
	}
	
	method sueldo(){
		return sueldoActual;
	}
}

object gimenez{
	var fondo = 300000;
	
	method pagarSueldo(empleado){
		fondo -= empleado.sueldo()
	}
	
	method fondo(){
		return fondo
	}
}


