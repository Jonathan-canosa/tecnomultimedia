//jonathan canosa labria
//https://youtu.be/H5lamJdOMEc
import processing.sound.*;
SoundFile poke;
principal p;
void setup() {

  size(500, 500);
  p =new principal();
  poke = new SoundFile(this, "poke.mp3");

  poke.loop();
}
void draw() {
  background(255);

  p.estados();
}

void keyPressed() {

  p.keyPressed();
  p.moverPersonaje(keyCode);
}
