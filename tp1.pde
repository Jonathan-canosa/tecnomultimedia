//tp-1 Canosa Labria, Jonathan David
int posty;
int random;
float y;
float radio;
PImage burbuja2;
PImage fondo1;
PImage yocayendo1;
PImage yocayendo2;
PImage yocayendo3;
PImage yopiso;
PImage pablo;
PImage croky;
PImage coco;
PImage malos;
PImage pablofin;
String titulo;
String presentacion;
String creador;
String secundarios;
String secundarios2;
String villanos;
PFont letra;


void setup() {
  size(500, 500);

  burbuja2 =loadImage ("burbuja2.png");
  fondo1 = loadImage ("fondo1.png");
  yocayendo1= loadImage("yocayendo1.png");
  yocayendo2 = loadImage("yocayendo2.png");
  yocayendo3= loadImage("yocayendo3.png");
  yopiso = loadImage("yopiso.png");
  pablo = loadImage("pablo.png");
  croky = loadImage("croky.png");
  coco = loadImage("coco.png");
  pablofin = loadImage("pablofin.png");
  malos = loadImage("malos.png");
  titulo = "Rainbow Magic ";
  creador = " Creador: \n Jonathan Canosa Labria";
  presentacion = "Protagonista: \n Pablo el ajolote";
  secundarios = " Personaje Secundarios:  \n Froky";
  secundarios2 = " Personaje Secundarios:  \n Coco";
  villanos = " villanos: ???";
  letra = loadFont( "MaturaMTScriptCapitals-48.vlw");


  y = 55;
  radio=55;
  posty = 1;
}
void draw() {
  textFont(letra);
  if ( 0<frameCount && frameCount<280) {
    image(fondo1, 0, 0);
    fill(random(225), random(225), random(225));
    textAlign(CENTER);
    textSize(35);
    text(titulo, width/2, y, radio);
    y = y + 2;
    if ( y> width + radio) {
      y = -radio;
    }
  }
if (280<frameCount && frameCount<290) {
  image(yocayendo1, 0, 0);
}
if (290<frameCount && frameCount<300) {
  image(yocayendo2, 0, 0);
}
if (310<frameCount && frameCount<330) {
  image(yocayendo3, 0, -30);
}
if (330< frameCount && frameCount<430) {
  image(yopiso, 0, -50);
  fill(255, 255, 255);
  textSize(35);
  text(creador, width/2, height /2);
}
if ( 430<frameCount && frameCount<510) {
  image(pablo, 0, 0);
  textSize(25);
  text(presentacion, 90, 50);
}
if (510<frameCount&& frameCount<590) {
  image(croky, 0, 0);
  fill(0);
  textSize(25);
  text(secundarios, 130, 50);
}
if (590<frameCount && frameCount <690) {
  fill(0);
  textSize(25);
  image(coco, 0, 0);
  text(secundarios2, 200, 50);
}
if (690< frameCount && frameCount< 790) {
  image(malos, 0, 0);
  fill(225, 225, 225);
  textSize(25);
  text(villanos, 200, 50);
}

if (790<frameCount) {
  noCursor();
  image(pablofin, -20, -20);
  image(burbuja2, mouseX, mouseY, 50, 50);
  image(burbuja2, 30, 50);
  image(burbuja2, 390, 50);
  image(burbuja2, 100, 400);
  image(burbuja2, 400, 200);
}
}
void keyPressed() {
  if (key== 'r' );
  frameCount = 0;
}
