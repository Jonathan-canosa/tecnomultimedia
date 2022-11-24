class Personaje {
  int px, py;
  PImage izquierda, derecha;
  boolean der;
  Personaje(int px, int py) {
    derecha = loadImage("derecha.png");
    izquierda= loadImage("izquierda.png");

    this.px = px;
    this.py = py;
  }
  void dibujarPersonaje() {
    if ( der == true) {
      image(derecha, px, py, 80, 80);
    } else if ( der ==  false ) {
      image(izquierda, px, py, 80, 80);
      
    }
  }
  void moverPersonaje(int tecla) {
    if (tecla == RIGHT) {
      der = true;
      px += 10;
    }
    if (tecla == LEFT) {
      der = false;
      px -= 10;
    }
  }
void limitar(){
   py=constrain(py,200,420);
 px=constrain(px,0,450);

}
}
