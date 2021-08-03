class Avioneta extends FBox {
    float cant = 1; 

  Avioneta (float w_, float h_) {
    super (w_, h_);
  }

  void inicializar () {
 for (int i = 0; i < cant; i++)
    if (frameCount % 50 == 0) {
      {
        FBox obstaculos = new FBox(50, 50);
        //1100 para q empiece de antes y que aparezca entre la posición y de 10 a 560
        obstaculos.setPosition( 900, random (10, 400) );
        float vx=-1200;
        obstaculos.setVelocity(vx, obstaculos.getVelocityX());
      //  obstaculos.addImpulse(-4000, 0);
        //le pongo la imagen del peon al FBox
        //obstaculos.attachImage( imagenObstaculos );
        //asignarle nombre a los objetos
        obstaculos.setName( "obstaculo" );
        obstaculos.setRotatable(false);
        obstaculos.setDensity(3000);
        //lo agrego al mundo
        mundo.add(obstaculos);

        if (resultado == true) {
          mundo.remove(obstaculos);
        }
        if (estado==4) {
          mundo.remove(obstaculos);
        }
      }
    }
      }
}
