Camion c;
Carro ca;
Moto mo;
Avion av;
void setup() {
  size(700, 500);
  c = new Camion(width/2, height/2, 100, 50, color(255, 255, 0), 10, 3);
  ca = new Carro(width/2, height/2, 100, 50, color(255, 0, 0), 10, 2);
  mo = new Moto(width/2, height/2, 100, 50, color(255, 0, 0), 10);
  av = new Avion(width/2, height/2, 100, 50, color(255, 0, 0), 10);
}

void draw() {
  background(255);
  mo.dibujar();
  delay(1);
}
void keyPressed() {
  if (keyCode == 39) {//derecha
    mo.rotar(1);
    mo.avanzar();
  }
  if (keyCode == 38) {//arriba
    mo.rotar(2);
    mo.avanzar();
  }
  if (keyCode == 37) {//izquierda
    mo.rotar(3);
    mo.avanzar();
  }
  if (keyCode == 40) {//abajo
    mo.rotar(4);
    mo.avanzar();
  }
}
