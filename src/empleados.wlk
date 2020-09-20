object baigorria{
	var empanadasVendidas = 0;
	var dinero = 0; 
	
	method vender(cantidadDeEmpanadas){
		empanadasVendidas += cantidadDeEmpanadas;
	}
	
	method sueldo(){
		return empanadasVendidas*15;
	}
	
	method cobrar(){
		dinero+=self.sueldo();
		
		empanadasVendidas = 0;
	}
	
	method totalCobrado(){
		return dinero
	}
}

object galvan{
	var sueldoActual = 15000;
	var deuda=0;
	var dinero=0;
	
	method sueldo(nuevoSueldo){
		sueldoActual = nuevoSueldo;
	}
	
	method sueldo(){
		return sueldoActual;
	}
	
	method cobrar(){
		dinero += self.sueldo();
		
		deuda = deuda - dinero;
		
		dinero = -(deuda);
		
		if(deuda < 0){
			deuda = 0;
		}
		
		if(dinero < 0){
			dinero = 0;
		}
	}

	method gastar(cuanto){
		deuda = deuda + cuanto;
		
		deuda = deuda - dinero;
		
		dinero = dinero - cuanto;
		
		if(dinero < 0){
			dinero = 0;
		}
	} 
	
	method dinero(){
		return dinero 
	}
	
	method deuda(){
		return deuda 
	} 
}

object gimenez{
	var fondo = 300000;
	
	method pagarSueldo(empleado){
		fondo -= empleado.sueldo()
		empleado.cobrar()
	}
	
	method fondo(){
		return fondo
	}
}


