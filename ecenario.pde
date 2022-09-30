class Escenario {
  Personaje Personaje;
  Fondo Fondo;
  PImage malo;
  PImage fondo;
  Escenario() {
    Fondo = new Fondo();
    Personaje= new Personaje();
    fondo= loadImage("noche.png");
  }
  void dibujar() {
    Fondo.dibujar(0, 0, fondo);
    Personaje.dibujar();
  }
}
