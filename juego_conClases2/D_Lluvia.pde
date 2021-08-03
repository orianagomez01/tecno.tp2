class Lluvia extends FCircle {
  int ballCount = 5;
  float bv= 400;
  Lluvia (float x_) {
    super (x_);
  }

  void inicializarLluvia () {
 
  for (int i=0; i<ballCount; i++) {
    FCircle bolita = new FCircle(15);
 //   float bf= map(i, 0, ballCount, 1000, 2000);
    bolita.setNoStroke();
    bolita.setFill(0, 0, 255);
    //acomodar posicion de random cuando se coloque en el juego
    bolita.setPosition(random(width), -2);
    bolita.setDensity(1000);
    bolita.addForce(500, -1000);
    bolita.setVelocity(bolita.getVelocityX(), bv);
    bolita.setRotatable(false);
    bolita.setRestitution(0);
    //poner foto de la lluvia
    //bolita.attachImage();
    mundo.add(bolita);

    if (resultado == true) {
      mundo.remove(bolita);
    }
    if (estado==4) {
      mundo.remove(bolita);
    }
  }
  }
}
