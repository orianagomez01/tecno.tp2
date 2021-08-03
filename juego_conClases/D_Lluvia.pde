class Lluvia extends FCircle {

  Lluvia (float r_) {
    super (r_);
  }

  void inicializarLluvia () {
    int ballCount = 15;
    float bv= 400;


    for (int i=0; i<ballCount; i++) {
      //float bf= map(i, 0, ballCount, 1000, 2000);
      setNoStroke();
      setFill(0, 0, 255);
      //acomodar posicion de random cuando se coloque en el juego
      setPosition(random(width), -2);
      setDensity(1000);
      //addForce(500, bf);
      setVelocity( getVelocityX(), bv );
      setRotatable(false);
      //rebote
      setRestitution(0);

      float fy = -600;
      addForce ( getForceX(), fy );


      //poner foto de la lluvia
      //bolita.attachImage();

      if (resultado == true) {
        mundo.remove(lluvia);
      }
      if (estado==4) {
        mundo.remove(lluvia);
      }
    }
  }
}
