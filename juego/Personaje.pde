class Globo extends FBox {
  
  //float xPosicion = width/2;
  
  //el _w y _h lo pide la libreria para colocar las posiciones del cuadrado con super
  Globo (float _w, float _h) {
    super(_w, _h);
  }

  //inicializamos como comienza el personaje en el juego
  void inicializar(float _x, float _y)
  {

    setName("personaje");
    setPosition(_x, _y);
    setDamping(0);
    setRestitution(0);
    setFriction(0);
    setRotatable(false);
    setStatic(true);
    setDensity(2);

    //es para agregar la imagen dentro del rect  
    //attachImage();
  }
  
  //void actualizar () {
  //  modificar la posicion para q se mueva en Y para cuando comienza el juego 
  //}
    
}
