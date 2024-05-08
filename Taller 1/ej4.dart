// Crea una clase Libro que modele la información que se mantiene en una biblioteca 
// sobre cada libro: título, autor (usa la clase Persona), ISBN, páginas, edición, editorial , 
// lugar (ciudad y país) y fecha de edición (usa la clase Fecha). La clase debe 
// proporcionar los siguientes servicios: 
// • método para leer la información y método para mostrar la información. Este 
// último método mostrará la información del libro.

class Persona {
  String nombre;
  int edad;

  Persona(this.nombre, this.edad);

  void mostrarCaracteristicas() {
    print("Nombre: $nombre");
    print("Edad: $edad");
  }
}

class Fecha {
  int dia;
  int mes;
  int year;

  Fecha(this.dia, this.mes, this.year);

  void mostrarFecha() {
    print("Fecha de edición: $dia/$mes/$year");
  }
}

class Libro {
  String titulo;
  Persona autor;
  String isbn;
  int paginas;
  int edicion;
  String editorial;
  String lugarCiudad;
  String lugarPais;
  Fecha fechaEdicion;

  Libro(
      this.titulo,
      this.autor,
      this.isbn,
      this.paginas,
      this.edicion,
      this.editorial,
      this.lugarCiudad,
      this.lugarPais,
      this.fechaEdicion);

  void mostrarInformacion() {
    print("Título: $titulo");
    print("Autor:");
    autor.mostrarCaracteristicas();
    print("ISBN: $isbn");
    print("Páginas: $paginas");
    print("Edición: $edicion");
    print("Editorial: $editorial");
    print("Lugar: $lugarCiudad, $lugarPais");
    fechaEdicion.mostrarFecha();
  }
}

void main() {
  Persona autor = Persona("Nombre del Autor", 35);
  Fecha fechaEdicion = Fecha(10, 5, 2024);

  Libro libro = Libro("Título del Libro", autor, "1234567890", 200, 1, "Editorial XYZ", "Ciudad ABC", "País XYZ", fechaEdicion);

  libro.mostrarInformacion();
}
