import elementos.*
/*
Segundo caso Polimorfismo
Cuando hace elementoActual.precioTotal(). 
El comité no sabe si está calculando en base a la altura 
o a la edad, solo recibe el costo del objeto.
*/
object presupuestoVictoria {
    var cantidadEntrenadores = 0
    method cantidadEntrenadoresNuevos(cantidad) {
    cantidadEntrenadores = cantidad
}
    // Precio total
    method precioTotal(){
        return cantidadEntrenadores * comiteOlimpico.precioTotal()
    }
}

object comiteOlimpico {
    var pagoInicial = 0
    var elementoInicial = raqueta
    // Metodos y cambios de elementos
    method elementoActual() = elementoInicial
    method nuevoElemento(elemento) {
        elementoInicial = elemento
    }
    // Metodos y cambio de presupuestos
    method presupuestoActual() = pagoInicial
    method presupuestoNuevo(cantidad) {
        pagoInicial = cantidad
    }
    // Presupuesto total
    method precioTotal(){
        return pagoInicial + self.elementoActual().precioTotal()
    }
}