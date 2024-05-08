import 'ej2.dart';

class Cancion {
  String titulo;
  String autor;

  Cancion(this.titulo, this.autor) {
    this.titulo = titulo;
    this.autor = autor;
  }

  void ponTitulo(String titulo) {
    this.titulo = titulo;
  }

  void ponAutor(String autor) {
    this.autor = autor;
  }

  void dameTitulo() {
    print("El titulo de la cancion es $titulo");
  }

  void dameAutor() {
    print("El autor de la cancion es $autor");
  }
}

void main() {
  final cancion = new Cancion("esclava", "Bryan Myers");
  cancion.dameTitulo();
  cancion.dameAutor();
  cancion.ponTitulo("Odiame");
  cancion.ponAutor("Julio Jaramillo");
  cancion.dameTitulo();
  cancion.dameAutor();
}
