class Avioneta extends FBox {

  Avioneta (float w_, float h_) {
    super (w_, h_);
  }

  void inicializar () {
    float cant = 1; 

    for (int i = 0; i < cant; i++)
      if (frameCount % 40 == 0) {
        {
          //1100 para q empiece de antes y que aparezca entre la posición y de 10 a 560
          setPosition( 900, random (10, 500) );
          float vx=-900;
          setVelocity(vx, getVelocityY());
          //le pongo la imagen del peon al FBox
          //obstaculos.attachImage( imagenObstaculos );
          //asignarle nombre a los objetos
          setName( "obstaculo" );
          setRotatable(false);
          setDensity(1);

          //attachImage();

          if (resultado == true) {
            mundo.remove(a);
          }
          if (estado==4) {
            mundo.remove(a);
          }
        }
      }
  }
}
