class Cuenta {
  int numCuenta;
  int numCliente;
  int saldoActual;
  String intAnual;

  Cuenta(this.numCuenta, this.numCliente, this.saldoActual, this.intAnual) {
    this.numCuenta = numCuenta;
    this.numCliente = numCliente;
    this.saldoActual = saldoActual;
    this.intAnual = intAnual;
  }

  void ingresar(int cantidad) {
    saldoActual = saldoActual + cantidad;
  }

  void retirar(int cantidad) {
    if (saldoActual > 0) {
      if (saldoActual >= cantidad) {
        saldoActual -= cantidad;
      } else {
        print("La cantidad a retirar excede el saldo actual: $saldoActual");
      }
    } else {
      print("No hay saldo disponible para retirar");
    }
  }

  void mostrar() {
    print("--Datos de la cuenta--");
    print("-Numero de cuenta: $numCuenta");
    print("-Numero de cliente: $numCliente");
    print("-Saldo actual: $saldoActual");
    print("-Interes anual: $intAnual");
  }
}

void main() {
  final cuenta = new Cuenta(3112, 206, 2000, "20%");
  cuenta.mostrar();

  cuenta.ingresar(5000);

  cuenta.mostrar();

  cuenta.retirar(10000);

  cuenta.mostrar();

  cuenta.retirar(7000);

  cuenta.mostrar();
}
