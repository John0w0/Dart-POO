// Construir una clase Factura que descienda de la clase Precio y que incluya dos atributos 
// específicos llamados emisor y cliente y, al menos, un método llamado imprimirFactura

class Precio {
  double monto;

  Precio(this.monto);

  void mostrarPrecio() {
    print("El precio es: \$${monto.toStringAsFixed(2)}");
  }
}

class Factura extends Precio {
  String emisor;
  String cliente;

  Factura(double monto, this.emisor, this.cliente) : super(monto);

  void imprimirFactura() {
    print("Factura:");
    print("  Emisor: $emisor");
    print("  Cliente: $cliente");
    mostrarPrecio();
  }
}

void main() {
  Factura factura = Factura(100.0, "TuCable", "Nicolas");
  factura.imprimirFactura();
}
