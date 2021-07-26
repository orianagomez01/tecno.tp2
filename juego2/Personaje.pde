class Globo extends FBox {

  float xOriginal= 400;

//int spiderCount = 10;
//int mainSize = 40;
//int legCount = 2;
//float legSize = 100;

//ArrayList mains = new ArrayList();

  //el _w y _h lo pide la libreria para colocar las posiciones del cuadrado con super
  Globo (float _w, float _h) {
    super(_w, _h);
    
    for (int i=0; i<spiderCount; i++) {
    crearConexion();
  }
    
  }

  //inicializamos como comienza el personaje en el juego
  void inicializar(float _x, float _y)
  {
pushMatrix();
    setName("personaje");
    setPosition( _x, _y );
    setDamping(0);
    setRestitution(0);
    setFriction(0);
    setRotatable(false);
    setGrabbable(false);
    // setStatic(true);
    setDensity(0.1);

    //es para agregar la imagen dentro del rect  
    //attachImage();
    
    popMatrix();
  }
  
//   void atraer (float x, float y) {
// FBody movimiento = mundo.getBody(x, y);

//  for (int i=0; i<mains.size(); i++) {
//    FBody other = (FBody)mains.get(i);

//    if (movimiento == other) {
//      setJointsDrawable(other, true);
//     //setJointsColor(other, hoverColor);
//    }
//  }
//}

//  void crearConexion() {
//  //float posX = random(mainSize/2, width-mainSize/2);
//  //float posY = random(mainSize/2, height-mainSize/2);

//  //FCircle main = new FCircle(mainSize);
//  //main.setPosition(posX, posY);
//  //main.setVelocity(random(-20,20), random(-20,20));
//  ////main.setFillColor(bodyColor);
//  //main.setNoStroke();
//  //main.setGroupIndex(2);
//  //mundo.add(main);

//  //mains.add(main);

////los circulos chicos
//  for (int i=0; i<legCount; i++) {
//    float x1 = legSize * cos(i*TWO_PI/3) + posX; 
//    float y = legSize * sin(i*TWO_PI/3) + posY;
    
//    float x= random (401, 410);

//    FBox leg = new FBox (60, 60);
//    leg.setPosition(x, y);
//    leg.setVelocity(random(-20,20), random(-20,20));
//    //leg.setFillColor(bodyColor);
//    leg.setNoStroke();
//    mundo.add(leg);

////la distancia que tienen
//    FDistanceJoint j = new FDistanceJoint(globo, leg);
//    j.setLength(50);
//    j.setNoStroke();
//    j.setStroke(0);
//    j.setFill(0);
//    j.setDrawable(false);
//    j.setFrequency(0.3);
//    mundo.add(j);
//  }
//}

//void setJointsDrawable(FBody b, boolean c) {
//  ArrayList l = b.getJoints();

//  for (int i=0; i<l.size(); i++) {
//    FJoint j = (FJoint)l.get(i);
//    j.setDrawable(c);
//  }
//}
}
