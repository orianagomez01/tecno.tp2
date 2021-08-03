class Fuego extends FBox {

  Fuego (float x_, float y_) {
    super (x_, y_);
  }

  void iniciarFuego (float _x, float _y) {
    setPosition (_x, _y);
    setName ("fuego");
    setStatic (true);
    setGrabbable (false);
    
    //poner foto del gif del fuego
    //attachImage();
  }
}
