import atletas.*
object trajeJudo {
    // Metodos y cambios de Atletas
    var atletaInicial = victoriaDPorte
    method atletaActual() = atletaInicial
    method atletaNuevo(atleta){
        atletaInicial = atleta
    }
    // Metodos y precio elemento
    method precioBase() = 50
    method precioTotal(){
        return self.precioBase() * self.atletaActual().altura()
    }
}

object raqueta {
    // Metodos y cambios de Atletas
    var atletaInicial = victoriaDPorte
    method atletaActual() = atletaInicial
    method atletaNuevo(atleta){
        atletaInicial = atleta
    }
    // Metodos y precio elemento
    method precioBase() = 100
    method precioTotal(){
        return (self.precioBase() * self.atletaActual().edad()).min(3000)
    }
}

object palos {
    // Metodos y cambios de palos
    var atletaInicial = victoriaDPorte
    method atletaActual() = atletaInicial
    method atletaNuevo(atleta){
        atletaInicial = atleta
    }
    // Metodos y precio elemento
    method precioBase() = 80
    method precioTotal(){
        return (self.precioBase() * (self.atletaActual().edad() + self.atletaActual().altura())).min(4500)
    }
}