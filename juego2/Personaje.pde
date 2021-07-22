class Globo extends FBox {

  float xOriginal= 400;

  //el _w y _h lo pide la libreria para colocar las posiciones del cuadrado con super
  Globo (float _w, float _h) {
    super(_w, _h);
  }

  //inicializamos como comienza el personaje en el juego
  void inicializar()
  {
pushMatrix();
    setName("personaje");
    setPosition( xOriginal, mouseY );
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

  //void actualizar () {
  //  modificar la posicion para q se mueva en Y para cuando comienza el juego 
  //}
}
