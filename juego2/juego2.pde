import fisica.*;

FWorld mundo;
Globo globo;

//importo la libreria de OpenCV
import gab.opencv.*;
import processing.video.*;
import processing.video.*;

//declaracion de OpenCV
OpenCV opencv;

//definicion
Capture camara;
int ancho = 150;
int alto = 100;

//declaro un ArrayList de objetos contorno
//ArrayList<Contour> contornos;

//TIEMPO
int interval;

int startTime;
int endTime;

void setup () {
  size (1200, 600);

  smooth();

  startTime= millis();

  //intervalo de segundos, en este caso seria un segundo
  interval = 800;

  println ("startTime" + startTime);

  //CAMARA
  //devuelve la lista de camaras disponibles
  //String[] listaDeCamaras = Capture.list();
  //printArray( listaDeCamaras );
  //inicialización
  //int numeroDeCamaraEnLaLista = 33;
  //camara = new Capture( this, listaDeCamaras[numeroDeCamaraEnLaLista] );
  //if (listaDeCamaras.length > 0) {
  // camara = new Capture( this, ancho, alto );
  // camara.start();

  // //inicializo el objeto opencv
  // opencv = new OpenCV(this, ancho, alto );

  //iniciar Fisica
  Fisica.init(this);

  //inicio el mundo
  mundo = new FWorld();

  mundo.setGravity(0, 0);

  //arma los bordes con un color de lo que va a ser el juego
  // mundo.setEdges(color(102, 153, 255));

  //inicializamos la clase del personaje y ponemos sus medidas (CUANDO LO PASEMOS AL DIBUJO, TENEMOS QUE COINCIDIR CON LAS MEDIDAS DEL RECT SINO NO FUNCIONA LA COLISIÓN 
  globo = new Globo(90, 200);

  //comenzar las posiciones de x e y del globo
  mundo.add (globo);

  //otro obstaculo de pajaros
  // agregarObstaculos( mundo, "R.png", "Pajaro" );


  //} else {
  //println("intentar otra vez Camara no encontrada");
  //exit();
  //}
}

void draw () {
  endTime= millis();

  println ("end time: " + endTime);

  //CAMARA
  //int umbral = int( map( 1100, 0, width, 0, 256 ) );
  fill(100);
  // pushMatrix();
  // noStroke();
  rect(0, 0, width, height);

  //pregunta por nuevo fotograma
  //if ( camara.available() ) {
  //  //lee el nuevo fotograma
  //  camara.read();
  //  //cargo en openCV la imagen de la camara
  //  opencv.loadImage( camara );
  //inivierte los colores
  // if ( invertir ) {
  // opencv.invert();
  // }
  //aplicar un umbral
  // opencv.threshold( umbral );

  // //busca contornos
  // contornos = opencv.findContours();

  // PImage salida = opencv.getOutput();
  // image( salida, 0, 0 );

  // stroke( 0, 255, 0 );
  // //recorro la lista de Blobs (contornos)
  // for ( Contour esteContorno : contornos ) {
  //   //y dibujo cada uno de los Blobs
  //   esteContorno.draw();
  //}
  // background (255);

  //dibujo el mundo con el juego
  background(0);
  //text (int(startTime+1), 20, 20);

  globo.inicializar(300, mouseY);

  if (startTime >= 100 && endTime % 150 == 0) {
    //comienza el juego
    agregarObstaculos( mundo, "R.jpg", "Avioneta" );

    println ("comienza juego");
  }

  if (endTime - startTime >= interval) {
    agregarLluvia();
    //agregarCajas();

    println("Timer triggered!");

    //resetear el inicio del tiempo
    startTime = millis();

    println ("reinicio startTime:" + startTime);
  }

//el primero indica el tiempo en millis y lo otro seria la frecuencia
  if (startTime >= 2400 && endTime % 150 == 0) {
    agregarCajas();

    println("box");
  }

  //if (frameCount % 24 == 0) {
  //  agregarLluvia();
  //  agregarCajas();
  //}

  //if (frameCount % 100 == 0 && frameCount < 1000) {
  //    agregarObstaculos( mundo, "R.jpg", "Avioneta" );
  //}


  mundo.step();
  mundo.draw(this);

}
//}
