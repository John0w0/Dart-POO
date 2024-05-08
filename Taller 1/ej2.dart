class Cafeteria {
  int capMaximaCafe = 1000;
  int capActualCafe;

  Cafeteria(this.capActualCafe) {
    this.capActualCafe = capActualCafe;
  }

  void vaciar() {
    capActualCafe = 0;
    print("-Cafetera vacia");
  }

  void servir(int cantidad) {
    if (cantidad <= capActualCafe) {
      ("Se sirvio $cantidad c.c de cafe");
      capActualCafe -= cantidad;
    } else {
      print("se sirvio la cantidad sobrante $capActualCafe");
      capActualCafe = 0;
    }
  }

  void agregarCafe(int cantidad) {
    if ((capActualCafe + cantidad) > capMaximaCafe) {
      print("La cantidad excede la capacidad de la cafetera");
    } else {
      print("Cantidad agregada");
      capActualCafe += cantidad;
    }
  }

  void mostrar() {
    print("--Cantidad Maxima de cafe $capMaximaCafe");
    print("--Cantidad actual de cafe $capActualCafe");
  }
}

void main() {
  final cafe = new Cafeteria(500);

  cafe.mostrar();

  cafe.agregarCafe(501);
  cafe.servir(600);
  cafe.mostrar();

  cafe.vaciar();
}
