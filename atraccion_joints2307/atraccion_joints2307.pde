/**
 *  Joints
 *
 *  by Ricard Marxer
 *
 *  This example shows how to access all the joints of a given body.
 */

import fisica.*;

FWorld world;

color bodyColor = #6E0595;
color hoverColor = #F5B502;

int spiderCount = 10;
int mainSize = 40;
int legCount = 2;
float legSize = 100;

ArrayList mains = new ArrayList();

void setup() {
  size(400, 400);
  smooth();

  Fisica.init(this);

  world = new FWorld();
  world.setEdges();
  world.setGravity(0, 0);

  for (int i=0; i<spiderCount; i++) {
    createSpider();
  }
}

void draw() {
  background(255);

  world.step();
  world.draw();
}

void colision () {
 FBody movimiento = world.getBody(mouseX, mouseY);

  for (int i=0; i<mains.size(); i++) {
    FBody other = (FBody)mains.get(i);

    if (movimiento == other) {
      setJointsDrawable(other, true);
     //setJointsColor(other, hoverColor);
    }
  }
}

//void mouseMoved() {
  //FBody hovered = world.getBody(mouseX, mouseY);

  //for (int i=0; i<mains.size(); i++) {
  //  FBody other = (FBody)mains.get(i);

  //  if (hovered == other) {
  //    setJointsDrawable(other, true);
  //   //setJointsColor(other, hoverColor);
  //  } 
  //  else {
  //    setJointsDrawable(other, false);
  //    setJointsColor(other, bodyColor);
  //  }
  //}
//}

void keyPressed() {
  try {
    saveFrame("screenshot.png");
  } 
  catch (Exception e) {
  }
}

void createSpider() {
  float posX = random(mainSize/2, width-mainSize/2);
  float posY = random(mainSize/2, height-mainSize/2);

  FCircle main = new FCircle(mainSize);
  main.setPosition(posX, posY);
  main.setVelocity(random(-20,20), random(-20,20));
  main.setFillColor(bodyColor);
  main.setNoStroke();
  main.setGroupIndex(2);
  world.add(main);

  mains.add(main);

//los circulos
  for (int i=0; i<legCount; i++) {
    float x1 = legSize * cos(i*TWO_PI/3) + posX; 
    float y = legSize * sin(i*TWO_PI/3) + posY;
    
    float x= random (401, 410);

    FCircle leg = new FCircle(mainSize/2);
    leg.setPosition(x, y);
    leg.setVelocity(random(-20,20), random(-20,20));
    leg.setFillColor(bodyColor);
    leg.setNoStroke();
    world.add(leg);

//la distancia que tienen
    FDistanceJoint j = new FDistanceJoint(main, leg);
    j.setLength(50);
    j.setNoStroke();
    j.setStroke(0);
    j.setFill(0);
    j.setDrawable(false);
    j.setFrequency(0.3);
    world.add(j);
  }
}

//void setJointsColor(FBody b, color c) {
//  ArrayList l = b.getJoints();

//  for (int i=0; i<l.size(); i++) {
//    FJoint j = (FJoint)l.get(i);
//    j.setStrokeColor(c);
//    j.setFillColor(c);
//    j.getBody1().setFillColor(c);
//    j.getBody2().setFillColor(c);
//  }
//}

void setJointsDrawable(FBody b, boolean c) {
  ArrayList l = b.getJoints();

  for (int i=0; i<l.size(); i++) {
    FJoint j = (FJoint)l.get(i);
    j.setDrawable(c);
  }
}
