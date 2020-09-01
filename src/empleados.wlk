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
	var sueldoActual= 0; 
	
	method vender(cantidadDeEmpanadas){
		empanadasVendidas = cantidadDeEmpanadas;
		sueldoActual+= empanadasVendidas*15;
	}
	
	method sueldo(){
		return sueldoActual
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


