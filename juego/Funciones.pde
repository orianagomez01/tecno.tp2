//FUNCIONES DE LOS OBSTACULOS QUE SOLO VAN EN Y

void iniciar() {
 //inicio el mundo
  mundo = new FWorld();
  
  //float x = map(mouseX, 0, width, 400, -400);
   float y = map(mouseY, 0, height, 400, -400);  
  mundo.setGravity(-2000, 400);

  //arma los bordes con un color de lo que va a ser el juego
  mundo.setEdges(color(102, 153, 255));

  //inicializamos la clase del personaje y ponemos sus medidas (CUANDO LO PASEMOS AL DIBUJO, TENEMOS QUE COINCIDIR CON LAS MEDIDAS DEL RECT SINO NO FUNCIONA LA COLISIÓN 
  globo = new Globo(42, 200);

  //comenzar las posiciones de x e y del globo
  globo.inicializar(width/2, height/2);
  mundo.add (globo);
  
  //obstaculos de...
  float posX[] = { 1100 };
  agregarObstaculos( posX, mundo, "R.jpg", "Avioneta" );

 //otro obstaculo de..
  float posX2[] = { 1100 };
  agregarObstaculos( posX2, mundo, "R.png", "Pajaro" );

  //FBox pared1 = new FBox(10, 300);
  //pared1.setFill(0);
  //pared1.setPosition( 1000, random(150, 450) );
  //pared1.setStatic(true);
  //mundo.add( pared1 );

}

//funcion de los obstaculos que después lo pasamos al iniciar para que se inicialice en el mundo
void agregarObstaculos( float[] posiciones, FWorld mundo, String nombreArchivo, String nombrePieza ) {

  //levanto la imagen de la pieza de ajedrez
  PImage imagenObstaculos = loadImage(nombreArchivo);

  for ( int i=0; i<posiciones.length; i++ ) {
    //declaro e inicio un FBox con las dimensiones de la imagen
    FBox obstaculos = new FBox( imagenObstaculos.width-400, imagenObstaculos.height );
    //establezco la posicion de las piezas
    obstaculos.setPosition( posiciones[i], random (10,560) );
    //indico la velocidad
    obstaculos.setVelocity(0,2);
    
      //obstaculos.setRestitution(1);

    //le pongo la imagen del peon al FBox
    obstaculos.attachImage( imagenObstaculos );
    //le pongo un nombre a la pieza
    obstaculos.setName( nombrePieza );
    
    //lo agrego al mundo
    mundo.add( obstaculos );
  }
}
