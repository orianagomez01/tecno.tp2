class Lluvia extends FCircle {

  Lluvia (float r_) {
    super (r_);
  }

  void inicializarLluvia () {
    int ballCount = 105;
    float bv= 800;

    for (int i=0; i<ballCount; i++) {
      //float bf= map(i, 0, ballCount, 1000, 2000);
      setNoStroke();
      setFill(0, 0, 255);
      //acomodar posicion de random cuando se coloque en el juego
      setPosition(random(width), -2);
      //setDensity(1000);
      //addForce(500, bf);
      setVelocity( getVelocityY(), bv );
      setRotatable(false);
          setGrabbable (false);

      setName ("lluvia");
      //rebote
      setRestitution(0);

      float fy = -600;
      addForce ( fy, getForceX());


      //poner foto de la lluvia
      //bolita.attachImage();

     
    }
  }
}
