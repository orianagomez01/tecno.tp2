class Globo extends FBox {

  //float xOriginal= 400;

  //el _w y _h lo pide la libreria para colocar las posiciones del cuadrado con super
  Globo (float _w, float _h) {
    super(_w, _h);
  }

  //inicializamos como comienza el personaje en el juego
  void inicializar(float _x, float _y)
  {
    pushMatrix();
    setName("personaje");
    setPosition( _x, _y );
    setDamping(2);
    setRestitution(2);
    setFriction(2);
    setRotatable(false);
    setGrabbable(false);
    setStatic(false);
    setDensity(0.5);

    //es para agregar la imagen dentro del rect  
    //attachImage();

    popMatrix();
  }

  //void CrearObstaculo () {
  //  pushMatrix();

  //  float cantobs= 1;
  //  for (int i=0; i<cantobs; i++) {

  //    FBox obs = new FBox (60, 60);

  //    obs.setName("obs");
  //    obs.setPosition ( 600, 50 );
  //    obs.setDamping(0);
  //    obs.setRestitution(0);
  //    obs.setFriction(0);
  //    obs.setRotatable(true);
  //    obs.setGrabbable(false);
  //    obs.setFill (255);
  //    // setStatic(true);
  //    obs.setDensity(0.1);

  //    //es para agregar la imagen dentro del rect  
  //    //obs.attachImage();
  //    mundo.add(obs);

  //    popMatrix();
  //  }
  //}

  //void atraerAlObstaculo () {
  //  ArrayList <FBody> cuerpos = mundo.getBodies();

  //  for (FBody cuerpo : cuerpos) {
  //    String nombre = cuerpo.getName();
  //    if ( nombre!= null ) {
  //      if ( nombre.equals("personaje" ) && nombre.equals("obs") ) {
          
  //        if (cuerpo.getY(), cuerpo.getX() > 60) {
  //        mundo.addForce (cuerpo);
  //        }
          
  //        }


  //        //float dx = globo.getX();
  //        //float dy = globo.getY();
  //        //float ox = obs.getX();
  //        //float oy = obs.getY();

  //        //cuerpo.addForce (ox, oy, dx, dy);
  //      }
  //    }
    }
