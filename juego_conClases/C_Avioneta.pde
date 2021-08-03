class Avioneta extends FBox {
    float cant = 1; 

  Avioneta (float w_, float h_) {
    super (w_, h_);
  }

  void inicializar () {

    for (int i = 0; i < cant; i++)
      if (frameCount % 50 == 0) {
        {
          //1100 para q empiece de antes y que aparezca entre la posición y de 10 a 560
          setPosition( 900, random (10, 500) );
          float vx=-900;
          setVelocity(vx, getVelocityY());
          //le pongo la imagen del peon al FBox
          //attachImage( imagenObstaculos );
          //asignarle nombre a los objetos
          setName( "obstaculo" );
          setRotatable(false);
          setGrabbable (false);
          setDensity(1);

          //attachImage();

          
        }
      }
  }
}
