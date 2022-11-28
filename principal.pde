class principal {
  PImage inicio, off, on, dialogo, dialogoj, ganaste, creditos, perdiste;
  int estado = 0;
  int contador=0;
  int tiempo = 0;
  int contadorTiempo = 30;
  int segundos, tiempoComienzo;
  lore l;
  Personaje p;
  Villano [] villanoc =  new Villano[8];
  principal() {
    inicio= loadImage("inicio.png");
    perdiste= loadImage("perdiste.png");
    creditos= loadImage("creditos.png");
    dialogo = loadImage("dialogo.png");
    dialogoj = loadImage("dialogoj.png");
    on = loadImage("on.png");
    off = loadImage("off.png");
    ganaste= loadImage("ganaste.png");
    for (int i = 0; i < 8; i++) {
      this.villanoc[i] = new Villano();
    }
    l = new lore();
    p = new Personaje(250, 400);

    tiempoComienzo= millis()/1000 + contadorTiempo;
  }
  void estados() {
    if (estado==0) {
      inicio();
    }
    if (estado==1) {
      lore();
    }
    if (estado==2) {
      intrucciones();
    }
    if (estado==3) {
      jugando();
    }
    if (estado==4) {
      ganaste();
    }
    if (estado==5) {
      perdiste();
    }
    if (estado==6) {
      creditos();
    }
  }
  void inicio() {
    estado = 0;
    image(inicio, 0, 0);
  }
  void lore() {
    estado = 1;
    l.dibujar();
  }
  void intrucciones() {
    estado = 2;
    image(off, 0, 0);
    image(dialogo, 0, 180, 240, 102);
    image(dialogoj, 330, 180, 188, 190);
    p.dibujarPersonaje();
    p.limitar();
  }
  void jugando() {
    estado=3;
    image(on, 0, 0);
    p.limitar();
    for (int i=0; i<villanoc.length; i++) {
      villanoc[i].dibujarVillano();
      float distancia = dist (villanoc[i].x, villanoc[i].y, p.px, p.py);
      if (distancia <= 40) {
        estado=5;
      }
    }
    p.dibujarPersonaje();
    contador();
    if (contador==30) {
      ganaste();
    }
  }
  void ganaste() {
    estado=4;
    image(ganaste, 0, 0);
    reiniciar();
  }
  void perdiste() {
    estado=5;
    image(perdiste, 0, 0);
    reiniciar();
  }

  void creditos() {
    estado =6;
    image(creditos, 0, 0);
  }
  void keyPressed() {

    if (estado == 0) {
      if (key == 's' || key == 'S') {
        estado = 1;
      }
      if ( key == 'a' || key == 'A') {
        estado=6;
      }
    }
    if (estado == 1) {
      if (key == 'c' || key == 'C') {
        estado = 2;
      }
    }
    if (estado ==2) {
      if ( key == 'e' || key == 'E') {
        estado = 3;
      }
    }
    if (estado ==4) {
      if ( key == 'z' || key == 'Z') {
        estado = 0;
      }
    }
    if (estado ==5) {
      if ( key == 'r' || key == 'R') {
        estado = 3;
      }
    }
    if (estado ==6) {
      if ( key == 'x' || key == 'X') {
        estado = 0;
      }
    }
  }
  void reiniciar() {
    for (int i = 0; i < 8; i++) {
      this.villanoc[i] = new Villano();
    }
    contadorTiempo = 30;
    tiempoComienzo= millis()/1000 + contadorTiempo;
    l = new lore();
    p = new Personaje(250, 400);
  }
  void contador() {
    segundos= tiempoComienzo - millis()/1000;
    if (segundos < 0) {
      tiempoComienzo = millis()/1000 + contadorTiempo;
    } else {
      text(segundos, 80, 80);
    }
    if (segundos == 0) {
      estado= 4;
    }
  }
  void moverPersonaje(int presionada) {
    p.moverPersonaje(presionada);
    l.moverDialogo(presionada);
  }
}
