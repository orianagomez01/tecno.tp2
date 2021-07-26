//FUNCIONES DE LOS OBSTACULOS QUE SOLO VAN EN Y
float posX = 1100;
float posY= random(10, 500);

boolean reinicio= false;

//funcion de los obstaculos que después lo pasamos al iniciar para que se inicialice en el mundo
void agregarObstaculos(FWorld mundo, String nombreArchivo, String nombrePieza ) {
pushMatrix();
//frameRate(5);
  float cant= random (2, 4);

  //levanto la imagen de la pieza de ajedrez
  PImage imagenObstaculos = loadImage(nombreArchivo);

  //if (frameCount % 10 == 0 && frameCount < 1000)
  //{
    for (int i = 0; i < cant; i++)
    {
    
      FBox obstaculos = new FBox(50, 50);
      //1100 para q empiece de antes y que aparezca entre la posición y de 10 a 560
      obstaculos.setPosition( 900, random (10, 500) );
      float vx=-800;
      obstaculos.setVelocity(vx, obstaculos.getVelocityX());
      //le pongo la imagen del peon al FBox
      //obstaculos.attachImage( imagenObstaculos );
      //asignarle nombre a los objetos
      obstaculos.setName( nombrePieza );
      obstaculos.setRotatable(false);
      //lo agrego al mundo
      mundo.add(obstaculos);
    }
  //}
  popMatrix();
  
}

void agregarLluvia() {
  
  pushMatrix();
  int ballCount = 5;
  float bv= 400;
  
    for (int i=0; i<ballCount; i++) {
    FCircle bolita = new FCircle(15);
    
    float bf= map(i, 0, ballCount, 1000, 2000);

    bolita.setNoStroke();
    bolita.setFill(255);
    //acomodar posicion de random cuando se coloque en el juego
    bolita.setPosition(random(width), -2);
    bolita.setDensity(2000);
    bolita.addForce(500, bf);
    bolita.setVelocity(bolita.getVelocityX(), bv);
    bolita.setName("lluvia");
    bolita.setRotatable(false);

    //rebote
    bolita.setRestitution(0);
    //bolita.setFriction(1);
    //bolita.setDamping(0);
    
    //poner foto de la lluvia
    //bolita.attachImage();
    mundo.add(bolita);
  
  }
  
  popMatrix();
   }
   
   void agregarCajas() {
  
  pushMatrix();
  int cajasO = 5;
  float cv= 500;
  
    for (int i=0; i<cajasO; i++) {
    FBox cajas = new FBox(60,60);
    
    float cf= map(i, 0, cajasO, 1000, 2000);

    cajas.setNoStroke();
    cajas.setFill(255);
    //acomodar posicion de random cuando se coloque en el juego
    cajas.setPosition(random(width), -2);
    cajas.setDensity(2000);
    cajas.addForce(500, cf);
    cajas.setVelocity(cajas.getVelocityX(), cv);
    cajas.setName("Cajas");
    cajas.setRotatable(false);

    //rebote
    cajas.setRestitution(0);
    //bolita.setFriction(1);
    //bolita.setDamping(0);
    
    //poner foto del obstaculo de las cajas
    //bolita.attachImage();
    mundo.add(cajas);
  
  }
  
  popMatrix();
   }
   
  void crearFuego () {
     
   
  }
   
   
