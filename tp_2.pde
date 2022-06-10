//Canosa Labria,Jonathan David 91389/9
//link video https://youtu.be/UkDcYGfDv8A
// precionar r para reiniciar el valor inicial
int cant = 7;
int tam;

void setup() {
  size(600, 600);
}

void draw() {
  background(0);
  tam = width/cant;
  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {
      for (int c =tam; c>0; c-=15) {
        rectMode(CENTER);
        noStroke();

        float azul = map(c, tam, 0, 40, 255 );

        if (mouseX>i*tam && mouseX<i*tam+tam && mouseY>j*tam&&mouseY<j*tam+tam) {
          fill(0, 0, azul, 150);
          ellipse(i*tam+tam/2, j*tam+tam/2, c, c);
          ellipse(i*tam+tam/2, j*tam+tam/2, c, c);
        } else {

          float limiteX = constrain(mouseX, i*tam, i*tam+tam);
          float limiteY = constrain(mouseY, j*tam, j*tam+tam);
          float ubicX = map(c, tam, 0, i*tam+tam/2, limiteX);
          float ubicY = map(c, tam, 0, j*tam+tam/2, limiteY);
          noStroke();
          float rojo = map(c, tam, 0, 50, 200 );
          float degrades= map(mouseX, 150, width, 255, 50);
          fill(rojo, 0, 0, degrades);
          ellipse(ubicX, ubicY, c, c);
        }
      }
    }
  }
}
void mousePressed() {
  cant++;
}
void keyPressed() {
  if (key == 'r') {
    cant = 7;
  }
}
