class Cajas extends FBox { 
 
  Cajas (float x_, float y_) {
  super (x_, y_);
  }
  
  void inicializar () {
    int cajasO = 3;
  float cv= 500;

  for (int i=0; i<cajasO; i++) {

    float cf= map(i, 0, cajasO, 1000, 2000);

    setNoStroke();
    setFill(255, 0, 0);
    //acomodar posicion de random cuando se coloque en el juego
    setPosition(random(width), -2);
    setDensity(2000);
    addForce(500, cf);
    setVelocity(cajas.getVelocityX(), cv);
    setName("Cajas");
    setRotatable(false);

    //rebote
    setRestitution(0);
    //bolita.setFriction(1);
    //bolita.setDamping(0);

    //poner foto del obstaculo de las cajas
    //bolita.attachImage();
  
    
  }
  }
  
}
