import fisica.*;

//---------------
FWorld mundo;
Fondo f;
Globo globo;
Avioneta a;
Lluvia lluvia;
Cajas cajas;
ArrayList <Fuego> fuego;

//-----------
int tiempo =1;
int estado=2;
boolean resultado;

void setup () {
  size (1200, 600);

  smooth();


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


  fuego = new ArrayList <Fuego> ();
  for (int i = 0; i < 8; i++)
  {
    Fuego p1 = new Fuego(140, 160);
    //el i * 145 es el acercamiento entre los box y el + 100 la posición en X
    //height es q ocupe todo el ancho y el - 80 la posicion en y 
    p1.iniciarFuego(i* 145 + 100, height - 80 - (i * 0));
    p1.setName ("fuego-plataforma");
    mundo.add(p1);
    fuego.add(p1);
  }

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

    float m = map (tiempo, 0, 1500, height/20, width/2-370); 
    tiempo = tiempo +1;
    noStroke();
    rect (width/2+350, 20, m, height/24); 

    // fill(0);
    //text ("Tiempo:", 10, 20);
    //tiempo=tiempo+1;
    //text(tiempo, 70, 20);
    //noFill();
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
      cajas.inicializar();
    }
  }
  if (tiempo >=1500) {
    estado=4;
  }

  //if (mousePressed) {
  //  Globo wind = new Globo(0, -40);
  //  globo.applyForce(wind);
  //}

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

void contactFuego (FContact colision) {
  
  if ( hayColisionEntre( colision, "personaje", "fuego-plataforma" ) ) {
    FBody uno = colision.getBody1();
    FBody dos = colision.getBody2();
    mundo.remove( uno );
    mundo.remove( dos );
  }
  
}
