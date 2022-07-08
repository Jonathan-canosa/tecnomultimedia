void pant() {
  if (pantalla.equals("inicio")) {
    image(fondo2, 0, 0);
     noStroke();
    fill(0, 0);
    rect(400, 30, 100, 50);
    rect(70, 390, 380, 50); 
    image(ps, 70, 390);
    image(creditos, 400, 30);
    if (mouseX>70 && mouseX < 70+380 && mouseY> 390 && mouseY<390+50 ) {
      if (mouseX>400 && mouseX < 400+100 && mouseY> 30 && mouseY<30+50 ) {
      }
      cursor(HAND);
    } else {
      cursor(ARROW);
    }
  } else if (pantalla.equals("credit")) {
    cursor(ARROW);
    image(fondoc, 0, 0);
    noStroke();
      fill(0, 0);
    rect(10, 450, 110, 50);
    if (mouseX>10 && mouseX < 10+110 && mouseY> 450 && mouseY<450+50 ) {
    }
  } else if (pantalla.equals("tutorial")) {
    cursor(ARROW);
    image(fondo1, 0, 0);
  } else if (pantalla.equals("partida")) {
    image(noche, 0, 0);
    fill(0,0);
    noStroke();
    rect(mouseX,mouseY,50,50);
    image(espada,mouseX,mouseY);
    if (frameCount%6==0) {
      orden++;
      orden = orden%cant;
    }
    pos++;
    pos = pos%height;    
       image(malo[orden], R, pos);
       noStroke();
    fill(0, 0);
          rect(R+15,pos+15,50,50);   
          rect(0,390,500,50);
 textSize(60);
    fill(0);
    text(time/60, 155, 85);
    fill(255);
    text(time/60, 150, 80);
    time++;
  
   if ( time > 15*60 ) {
       time =0;
      timepantalla =0;
    
      pantalla = "ganaste";
    }
 
  } else {
    if (pantalla.equals("ganaste")) {
      image(ganaste, 0, 0);
    
  }else{
    if (pantalla.equals("perdiste")){      
    image(perdiste,0,0);    
}
  }
  
}
}

  
