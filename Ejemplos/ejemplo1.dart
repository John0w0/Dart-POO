class moto {
  String marca;
  String color;

  moto(this.marca, this.color) {
    this.color = color;
    this.marca = marca;
  }

  void caracteristicas() {
    print("La marca de mi moto es $marca");
    print("El color de mi moto es $color");
  }
}

void main() {
  final mt09 = new moto("yamaha", "negra");
  mt09.caracteristicas();

  final z1000 = new moto("Kawasaki", "verde");
  z1000.caracteristicas();
}
