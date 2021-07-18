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

void setup () {
  size (1200, 600);
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

 //} else {
 //println("intentar otra vez Camara no encontrada");
 //exit();
 //}
 
 iniciar();
}

void draw () {
 //CAMARA
    //int umbral = int( map( 1100, 0, width, 0, 256 ) );

  noFill();
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
  mundo.step();
  mundo.draw();
 
  }
  //}
