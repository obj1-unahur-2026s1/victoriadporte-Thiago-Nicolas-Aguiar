object tenis {
    method presupuestoBase() = 200
    // Metodos y cambios de Hinchas
    var cantidadHinchasInicial = 5
    method cantidadHinchasNuevos(cantidad){
        cantidadHinchasInicial = cantidadHinchasInicial + cantidad
    }
    // Precio total y cuenta completa
    method precioTotal() {
        return self.presupuestoBase() +  3 * cantidadHinchasInicial
    }
}

object judo {
    method presupuestoBase() = 160
    // Metodos y cambios de Medallas
    var cantidadMedallasInicial = 3
    method cantidadMedallasNuevas(cantidad){
        cantidadMedallasInicial = cantidadMedallasInicial + cantidad
    }
    // Precio total y cuenta completa
    method precioTotal() {
        return self.presupuestoBase()  * cantidadMedallasInicial
    }
}

// Nueva disciplina
object hockey {
    method presupuestoBase() = 375
    // Metodos y cambios de palos
    var cantidadPalosInicial = 10
    method cantidadPalosNuevos(cantidad){
        cantidadPalosInicial = cantidadPalosInicial + cantidad
    }
    // Precio total y cuenta completa
    method precioTotal() {
        return self.presupuestoBase() +  5 * cantidadPalosInicial
    }
}