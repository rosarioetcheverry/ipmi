PImage[] imagenes = new PImage[7];

PFont fuente;

int pantalla = 0;

int tiempoCambio = 5000;
int ultimoCambio;

float tituloY = -100;
float textoY = -100;
float textoX = -100;
float texto2X = -150;
float finalY = -80;
float escalaTexto4 = 1;
float alphaTexto = 0;
float escalaTexto = 1;

void setup() {

  size(640, 480);

  fuente = loadFont("SimLLHP-120.vlw");

 imagenes[0] = loadImage("inicio.jpeg");
imagenes[1] = loadImage("pantalla1.jpg");
imagenes[2] = loadImage("pantalla2.jpg");
imagenes[3] = loadImage("pantalla3.jpeg");
imagenes[4] = loadImage("pantalla4.jpeg");
imagenes[5] = loadImage("pantalla5.jpg");
imagenes[6] = loadImage("final.png");

  ultimoCambio = millis();

  textAlign(CENTER, CENTER);
}

void draw() {

  background(0);

  if (pantalla >= 1 && pantalla <= 5) {

    image(imagenes[pantalla], 0, 0, width, height);

    cambiarPantallaAutomaticamente();
  }

  if (pantalla == 0) {
    pantallaInicio();
  }

  else if (pantalla == 1) {
    pantallaUno();
  }

  else if (pantalla == 2) {
    pantallaDos();
  }

  else if (pantalla == 3) {
    pantallaTres();
  }

  else if (pantalla == 4) {
    pantallaCuatro();
  }

  else if (pantalla == 5) {
    pantallaCinco();
  }

  else if (pantalla == 6) {
    pantallaFinal();
  }
}

void cambiarPantallaAutomaticamente() {

  if (millis() - ultimoCambio > tiempoCambio) {

    pantalla++;

    ultimoCambio = millis();

    textoX = -500;
    alphaTexto = 0;
    escalaTexto = 1;
  }
}

void pantallaInicio() {

 image(imagenes[0], 0, 0, width, height);

  fill(255);

  textFont(fuente);
   textSize(70);
   
   
  if (tituloY < 135) {
    tituloY += 4;
  }

 text("LOS SIMS 2", width/2, tituloY);
  
   noFill();
  stroke(255);

  rect(220, 350, 200, 60);

  fill(255);

  textSize(35);

  text("COMENZAR", width/2, 380);
}

void pantallaUno() {

  fill(255);

  textFont(fuente);
  textSize(35);

  text("Crea tu Sim de la manera que mas te guste, podes personalizarlo en detalle!", 380, textoY, 250, 200);

  if (textoY < 40) {
    textoY += 3;
  }
}

void pantallaDos() {

  textFont(fuente);
  textSize(35);

  if (alphaTexto < 255) {
    alphaTexto += 3;
  }

  fill(255, alphaTexto);

  text(
    "Construi tu casa de forma libre y llenala con tus muebles preferidos.", texto2X, -20, 170, 380);

  if (texto2X < 15) {
    texto2X += 4;
  }
}

void pantallaTres() {

  textFont(fuente);
  textSize(35);

  fill(255);

  float y = 360 + sin(frameCount * 0.05) * 20;

   text(
    "Maneja la vida de tu Sim, aunque a veces ocurran accidentes fuera de tu control.", 20, y, 600, 115);
}

void pantallaCuatro() {

  escalaTexto4 += 0.003;

  if (escalaTexto4 > 1.15) {
    escalaTexto4 = 1;
  }

  pushMatrix();

  // Posición arriba a la derecha
  translate(380, 340);

  // Efecto zoom
  scale(escalaTexto4);

  fill(255);

  textFont(fuente);
  textSize(35);

  textAlign(LEFT, TOP);

  text(
    "Podes hacer amigos, amores y hasta enemigos.", 0, 0, 240, 180);

  popMatrix();

  textAlign(CENTER, CENTER);
}

void pantallaCinco() {

  fill(255);

  textFont(fuente);
  textSize(35);

  float y = 320 + cos(frameCount * 0.05) * 15;

  text(
    "Forma tu familia ideal, velos nacer, crecer y hasta...", 27, y, 600, 200);
}

void pantallaFinal() {

  image(imagenes[6], 0, 0, width, height);

  fill(255);

  textFont(fuente);
  textSize(40);
  
  if (finalY < 100) {
    finalY += 4;
  }
  
  text("Jugar con La Parca.", width/2, finalY);

  noFill();
  stroke(255);

  rect(220, 350, 200, 60);

  fill(255);
  

  textSize(35);

  text("REINICIAR", width/2, 380);
}

void mousePressed() {

  if (pantalla == 0 &&
      mouseX > 220 &&
      mouseX < 420 &&
      mouseY > 350 &&
      mouseY < 410) {

    pantalla = 1;

    ultimoCambio = millis();
  }

  if (pantalla == 6 &&
      mouseX > 220 &&
      mouseX < 420 &&
      mouseY > 300 &&
      mouseY < 360) {

    pantalla = 0;

    textoX = -500;
    alphaTexto = 0;
    escalaTexto = 1;

    ultimoCambio = millis();
  }
}
