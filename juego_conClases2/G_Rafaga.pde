class Rafaga extends FBox {

  //int cant = 1;
  
  Rafaga (float x_, float y_) {
    super (x_, y_);
  }

  void iniciar () {
    
    //for (int i = 0; i < cant; i++)
      if (frameCount % 300 == 0) {
        //{
          //1100 para q empiece de antes y que aparezca entre la posición y de 10 a 560
          setPosition( 900, random (30, 400) );
          float vx=-900;
          setVelocity(vx, getVelocityY());
          //le pongo la imagen del peon al FBox
          //attachImage( imagenObstaculos );
          //asignarle nombre a los objetos
          setName( "Viento" );
          setFill(255, 255, 0);
          setRotatable(false);
          setGrabbable (false);
          setDensity(1);

          //attachImage();

  mundo.add (rafaga);

        }
      }
    
  //}
}
