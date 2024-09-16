import cosas.* 

object casa {
	const cosas = []
  method comprar(cosa){
	cosas.add(cosa)
  }

  method cantidadDeCosasCompradas() {
	return cosas.size()
  }

  method tieneAlgun(categoria) {
	return cosas.any({cosa => cosa.categoria() == categoria})
  }

  method vieneDeComprar(categoria) {
	return (not(cosas.isEmpty()) and cosas.last().categoria() == categoria) 
  }

  method esDerrochona() {
	return 9000 < cosas.sum({cosa => cosa.precio()})
  }

  method compraMasCara() {
	return cosas.max({cosa => cosa.precio()})
  }

  method comprados(categoria){
	return cosas.filter {cosa => cosa.categoria() == categoria}
}

  method malaEpoca() {
	return cosas.all({cosa => cosa.categoria() == comida})
  }

 method queFaltaComprar(lista) {
	return lista.filter{cosa => not(cosas.contains(cosa))}
 }

  method faltaComida() {
	return self.comprados(comida).size() < 2
  }

  method categoriasCompradas() {
	return cosas.map{cosa => cosa.categoria()}.asSet()
  }
}
