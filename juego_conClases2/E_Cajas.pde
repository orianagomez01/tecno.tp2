class Cajas extends FBox { 

  Cajas (float x_, float y_) {
    super (x_, y_);
  }

  void inicializar () {
    int cajasO = 3;
    float cv= 500;

    for (int i=0; i<cajasO; i++) {
      FBox cajas = new FBox(60, 60);
      float cf= map(i, 0, cajasO, 1000, 2000);
      cajas.setNoStroke();
      cajas.setFill(255, 0, 0);
      //acomodar posicion de random cuando se coloque en el juego
      cajas.setPosition(random(width), -2);
      cajas.setDensity(1000);
      cajas.addForce(500, cf);
      cajas.setVelocity(cajas.getVelocityX(), cv);
      cajas.setName("Cajas");
      cajas.setRotatable(false);

      //rebote
      cajas.setRestitution(0);
      //bolita.setFriction(1);
      //bolita.setDamping(0);

      //poner foto del obstaculo de las cajas
      //bolita.attachImage();
      mundo.add(cajas);

      if (resultado == true) {
        mundo.remove(cajas);
      }
      if (estado==4) {
        mundo.remove(cajas);
      }
    }
  }
}
