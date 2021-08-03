import fisica.*;

//---------------
FWorld mundo;
Fondo f;
Globo globo;
Avioneta a;
Lluvia lluvia;
Cajas cajas;

//-----------
int tiempo =1;
int estado=2;
boolean resultado;

void setup () {
  size (1200, 600);

  //iniciar Fisica
  Fisica.init(this);

  //inicio el mundo
  mundo = new FWorld();

  mundo.setGravity(0, 0);

  //-------------------------- INICIALIZAR OBJETOS

  //agregar fondo para inicializarlo
  f= new Fondo();

  a= new Avioneta (50, 50);
  mundo.add(a);

  globo= new Globo (90, 200);
  mundo.add(globo);

  lluvia = new Lluvia (15);
  mundo.add(lluvia);

  cajas = new Cajas (60, 60);
  mundo.add (cajas);
}

void draw () {
  //dibujo el mundo con el juego
  //background(0);
  if (estado==1) {
    //Pantalla inicio del juego

    mundo.remove (globo);
    mundo.remove(cajas);
    mundo.remove(lluvia);
    mundo.remove(a);
  }
  if (estado==2) {
    //comienza el juego
    globo.inicializar();
    f.inicializar();
  }
  if (estado==3) {
    //pierde por colision
    background(0);
    mundo.remove(globo);
    mundo.remove(a);
    mundo.remove (lluvia);
    mundo.remove(cajas);
    //aca iria el remove del obstaculo para que se borre ni bien sucede la colision
    text("No llegaste a destino!", 200, 200);
    //  stop();
  }
  if (estado==4) {
    //gano al pasar cierto tiempo sin perder
    background(0);
    mundo.remove(globo);
    mundo.remove(a);
    mundo.remove (lluvia);
    mundo.remove(cajas);
    //aca iria el remove del obstaculo para que se borre ni bien sucede la colision
    text("¡Excelente! has superado los obstaculos y llegado a destino", 200, 200);
    // stop();
  }

  if (tiempo >= 200) {
    a.inicializar();
    //agregarObstaculos( mundo, "R.jpg", "Avioneta" );
    // startTime = tiempo;
    println ("comienza juego");
    // }
  }
  //seguir.inicializar(); 

  if (tiempo >= 450 && tiempo <= 800) {
    if ( frameCount % 40 == 0) {
      //agregarLluvia();
      lluvia.inicializarLluvia();
    }
  }
  //el primero indica el tiempo en millis y lo otro seria la frecuencia
  if (tiempo >= 640) {
    if ( frameCount % 300 == 0) {
      //cajas.inicializar();
    }
  }
  if (tiempo >=1500) {
    estado=4;
  }

  //if (mousePressed) {
  //  Globo wind = new Globo(0, -40);
  //  globo.applyForce(wind);
  //}

  fill(0);
  text ("Tiempo:", 10, 20);
  tiempo=tiempo+1;
  text(tiempo, 70, 20);
  noFill();
  mundo.step();
  mundo.draw(this);
}


//COLISION
void contactStarted( FContact colision ) {
  if ( hayColisionEntre( colision, "personaje", "obstaculo" ) ) {
    FBody uno = colision.getBody1();
    FBody dos = colision.getBody2();
    mundo.remove( uno );
    mundo.remove( dos );
  }
  
  if (resultado == true) {
//  mundo.remove(a);
//  mundo.remove(cajas);
  mundo.remove(lluvia);
}

}
boolean hayColisionEntre( FContact contact, String nombreUno, String nombreDos ) {

  // boolean resultado = false;
  FBody uno = contact.getBody1();
  FBody dos = contact.getBody2();
  String etiquetaUno = uno.getName();
  String etiquetaDos = dos.getName();


  if ( etiquetaUno != null && etiquetaDos != null ) {

    println( etiquetaUno+" <-> "+etiquetaDos);

    if ( 
      ( nombreUno.equals( etiquetaUno ) && nombreDos.equals( etiquetaDos ) ) ||
      ( nombreDos.equals( etiquetaUno ) && nombreUno.equals( etiquetaDos ) )
      ) {
      resultado = true;
      estado=3;
    }
  }
  return resultado;
}
void contactLluvia( FContact colision ) {
  if ( hayColisionEntre( colision, "personaje", "lluvia" ) ) {
    resultado = false;
  }
}
void contactCajas( FContact colision ) {
  if ( hayColisionEntre( colision, "personaje", "cajas" ) ) {
    resultado = false;
  }
}
