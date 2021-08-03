class Fuego extends FBox {

  Fuego (float x_, float y_) {
    super (x_, y_);
  }

  void iniciarFuego () {
    setPosition (width, height-100);
    setName ("lluvia");
    setStatic (true);


    //poner foto del gif del fuego
    //attachImage();
  }
}
