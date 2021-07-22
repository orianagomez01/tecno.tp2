/**
 *  Droppings Remade
 *
 *  This example shows how to create a simple remake of my favorite
 *  soundtoy:<br/>
 *
 *    <a href=http://www.balldroppings.com/>BallDroppings</a> 
 *       by Josh Nimoy.
 */
 
import fisica.*;

FWorld mundo;
FBox caja;

int ballCount = 2;
float x, y;

void setup() {
  size(1200, 600);
  smooth();
  
  Fisica.init(this);
  
  mundo = new FWorld();
  mundo.setGravity(0, 0);
  
  //si no lo ponemos, aparecen + rápido
  //frameRate(24);
  background(0);
}

void draw() {
  fill(0, 100);
  noStroke();
  rect(0, 0, width, height);
  
  //%300
  if ((frameCount % 100) == 0) {
    for (int i=0; i<ballCount; i++) {
    FBox bolita = new FBox(150,100);
    bolita.setNoStroke();
    bolita.setFill(255);
    //acomodar posicion de random cuando se coloque en el juego
    bolita.setPosition(random(width), -2);
    bolita.addForce(0.5, 0.9);
    bolita.setVelocity(0, 100);
    bolita.setRestitution(0.9);
    bolita.setDamping(0);
    //poner foto de la lluvia
    //bolita.attachImage();
    mundo.add(bolita);
  }
  
  }
  mundo.step();
  mundo.draw(this);
}

//void contactStarted(FContact contacto) {
//  FBody cuerpo1 = contacto.getBody1();
//  cuerpo1.setFill(255, 0, 0);
//  cuerpo1.setStroke(255, 0, 0);
  
//  noFill();
//  stroke(255);
//  //contacto que hace q caiga para los costados
//  //ellipse(contacto.getX(), contacto.getY(), 30, 30);
//}

//void contactEnded(FContact contacto) {
//  FBody cuerpo1 = contacto.getBody1();
//  cuerpo1.setFill(255);
//  cuerpo1.setStroke(255);
//}

void keyPressed() {
  try {
    saveFrame("screenshot.png");
  } 
  catch (Exception e) {
  }
}
