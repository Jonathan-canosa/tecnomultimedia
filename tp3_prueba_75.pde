//el templo
//jonathan canosa labria 91389/9
String pantalla;
int cant = 3;
int time;
int timepantalla;
float R ;
int pos;
int orden;
int perdio;
PImage [] malo = new PImage[cant];
PImage fondo1;
PImage fondo2;
PImage ganaste;
PImage noche;
PImage ps;
PImage creditos;
PImage fondoc;
PImage perdiste;
PImage espada;
void setup() {
  size(500, 500);
  for (int i=0; i<cant; i++) {
    malo[i] = loadImage("malo"+i+".png");
  }
  pantalla = "inicio";
  fondo1 = loadImage("fondo1.png");
  fondo2 = loadImage("fondo2.png");
  fondoc = loadImage("fondoc.png");
  noche = loadImage("noche.png");
  ps = loadImage("ps.png");
    espada = loadImage("espada.png");
  ganaste = loadImage("ganaste.png");
  perdiste = loadImage("perdiste.png");
  creditos = loadImage("creditos.png");
  R = random(450);
  perdio = 0;
}

void draw() {
  pant();
  if (R+15>0 && R+15< 0+500 && pos+15> 390 && pos+15<390+50 ) {
    pantalla = "perdiste";
  }
  
}


void mousePressed() {
  if (mouseX>70 && mouseX<70+380 && mouseY>390 && mouseY < 390 +50 && pantalla.equals("inicio")) {
    pantalla = "tutorial";
  }
  if (mouseX>400 && mouseX < 400+100 && mouseY> 30 && mouseY<30+50 && pantalla.equals("inicio")) {
    pantalla = "credit";
  }
  if (mouseX>10 && mouseX < 10+110 && mouseY> 450 && mouseY<450+50 && pantalla.equals ("credit")) {
    pantalla = "inicio";
  }
 if (mouseX>R+15 && 50<R+15+50 && mouseY>pos+15 && mouseY<pos+50){
      cant = 3;
      pos = 0;
      orden = 0;
      R = random(450);
 }
       
      
}

void keyPressed() {
  if (key==  ' ') {
    if ( pantalla.equals("tutorial") && keyPressed ) {
      pantalla = "partida";
    }
  }

  if (key==  'r') {
    if (pantalla.equals("perdiste") && keyPressed) {
      pantalla = "partida";
      cant = 3;
      pos = 0;
      orden = 0;
      perdio = 0;
      time = 0;
      timepantalla = 0;
    }
  }
  if (key==  'r') {
    if ( pantalla.equals("ganaste") && keyPressed ) {
      pantalla = "inicio";
      cant = 3;
      pos = 0;
      orden = 0;
      perdio = 0;
      time = 0;
      timepantalla = 0;
    }
  }
}
