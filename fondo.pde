class Fondo {
  float posX, posY, tam;
  PImage noche;
  Fondo () {
    posX=0;
    posY=0;
    tam=500;
    noche = loadImage("noche.png");
  }

  void dibujar(float x, float y, PImage noche ) {
    image(noche, x, y, tam, tam);
  }
}
