class lore {
  int px, py;
  PImage [] mago;
  PImage [] fondo;
  int mover;
  int cambiar;
  PImage dialogod;
  lore() {
    mago = new PImage[4];
    fondo = new PImage[6];
    for (int i=0; i<4; i++) {
      mago[i] = loadImage("mago"+i+".png");
    }
    for (int j=0; j<6; j++) {
      fondo[j] = loadImage("fondo"+j+".jpg");
    }
    dialogod = loadImage("dialogod.png");
  }

  void dibujar() {
    image(fondo[cambiar], 0, 0);
    image(mago[mover], 350, 250);
    image(dialogod, 330, 80, 188, 190);

    if (frameCount%50==0) {
      mover ++;
      mover = mover%3;
    }
  }
  void moverDialogo(int tecla) {
    if (tecla == RIGHT) {
      cambiar ++;
      cambiar = cambiar%6;
    }
  }
}
