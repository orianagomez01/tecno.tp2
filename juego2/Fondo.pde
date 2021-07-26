class Fondo { 
PImage fondo;
float juego;

int Score=0, highScore=0; // puntuacion y puntuacion Maxima
int x= -200, y, vy=0;//posicion ,y,x, y la velocidad horizontal Vy
int ox[]= new int [2], oy[]=new int [2];

Fondo () {
   fondo= loadImage("fondo.jpg");
}

 
void inicializar() {
  //if (juego==0) { 
    // Si estamos en el juego
    imageMode(CORNER);
    image(fondo, x, 0);
    image(fondo, x+fondo.width, 0);// se suma la x para crear el movimiento del fondo

//velocidad de la imagen
    x-=4;
    
    //hace q se reinicie y quede en loop
   if (x < -fondo.width) {
   x=0;
   }
  }
//}
}
