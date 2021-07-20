//FUNCIONES DE LOS OBSTACULOS QUE SOLO VAN EN Y

//ESTO ES PASAR TODO QUE IRIA EN EL SETUP DE LA PANTALLA PRINCIPAL A UNA FUNCIÓN LLAMADA INCIAR QUE SE PONE EN EL SETUP
void iniciar() {
  //inicio el mundo
  mundo = new FWorld();

  mundo.setGravity(0, 0);

  //arma los bordes con un color de lo que va a ser el juego
  mundo.setEdges(color(102, 153, 255));

  //inicializamos la clase del personaje y ponemos sus medidas (CUANDO LO PASEMOS AL DIBUJO, TENEMOS QUE COINCIDIR CON LAS MEDIDAS DEL RECT SINO NO FUNCIONA LA COLISIÓN 
  globo = new Globo(90, 200);

  //comenzar las posiciones de x e y del globo
  globo.inicializar();
  mundo.add (globo);

  //obstaculos de avioneta
  agregarObstaculos( mundo, "R.jpg", "Avioneta" );

  //otro obstaculo de pajaros
  agregarObstaculos( mundo, "R.png", "Pajaro" );


  //FBox pared1 = new FBox(10, 300);
  //pared1.setFill(0);
  //pared1.setPosition( 1000, random(150, 450) );
  //pared1.setStatic(true);
  //mundo.add( pared1 );
}

//funcion de los obstaculos que después lo pasamos al iniciar para que se inicialice en el mundo
void agregarObstaculos(FWorld mundo, String nombreArchivo, String nombrePieza ) {

  float cant= random (1, 5);

  //levanto la imagen de la pieza de ajedrez
  PImage imagenObstaculos = loadImage(nombreArchivo);

  for (int i = 0; i < cant; i++)
  {
    FBox obstaculos = new FBox(50, 50);
    //1100 para q empiece de antes y que aparezca entre la posición y de 10 a 560
    obstaculos.setPosition(1200, random (10, 500));

    float vx=-700;
    obstaculos.setVelocity(vx, obstaculos.getVelocityX());
    //le pongo la imagen del peon al FBox
    //obstaculos.attachImage( imagenObstaculos );
    //asignarle nombre a los objetos
    obstaculos.setName( nombrePieza );
    //lo agrego al mundo
    mundo.add(obstaculos);
  }
}
