class Villano {
  float x, y;
  int mover;
  PImage [] villano;
  Villano() {
    villano = new PImage[6];
    for (int i=0; i<6; i++) {
      villano[i] = loadImage("villano"+i+".png");
    }
    x = random(0, width);
    y = random(-height, -10);
  }
  void reiniciar() {
    x = random(0, 350);
    y = random(-height, -10);
  }
  void actualizar() {
    y++;
    x =x+(random(-10, 10));
    if (y > 501) {
      y = 0;
    }
    if (x <= 10) {
      x = 11;
    } else if (x >= 350-10) {
      x = 350-11;
    }
  }
  void dibujarVillano() {
    actualizar();
    push();
    image(villano[mover], x, y, 100, 100);
    if (frameCount%10==0) {
      mover ++;
      mover = mover%6;
    }
    pop();
  }
}
