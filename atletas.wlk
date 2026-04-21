import disciplinas.*
import presupuestos.*
  /*
  Primer caso Polimorfismo:
  Cuando hace disciplinaActual.precioTotal(). Victoria no sabe si suma 
  hinchas o multiplica medallas, solo sabe que la disciplina 
  le devuelve un número.
  */
object victoriaDPorte { 
  // Metodos y Cambios de edad
  var edadInicial = 0
  method edad() = edadInicial
  method nuevaEdad(cantidad) {
    edadInicial = cantidad
  }
  // Metodos y Cambios de altura
  var alturaInicial = 0
  method altura() = alturaInicial
  method nuevaAltura(cantidad){
    alturaInicial = cantidad
  }
  // Metodos y Cambios de disciplina
  var disciplinaInicial = tenis
  method disciplinaActual() = disciplinaInicial
  method nuevaDisciplina(disciplina){
    disciplinaInicial = disciplina
  }
  // Precio total
  method precioTotal(){
    return presupuestoVictoria.precioTotal() + self.disciplinaActual().precioTotal()
  }
}