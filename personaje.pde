class Personaje {
  float tam;
  PImage malo;
  Personaje() {
    tam=100;
    malo = loadImage("malo.png");
  }
  void dibujar() {
    noCursor();
    image(malo, mouseX, mouseY, tam, tam);
  }
}
