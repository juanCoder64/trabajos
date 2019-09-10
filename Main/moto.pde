class Moto {
  private float h;
  private float w;
  private float x, y;
  private float v;
  private int or=1;  
  private Base carcasa;
  private Llanta llantaIzq;
  private Llanta llantaDer;
  private Ventana[] ventana;
  public Moto(float x, float y, float w, float h, int _color, float v){
    this.x = x;
    this.y = y;
    this.h = h;
    this.w = w;
    this.v = v;
    
    
    carcasa = new Base(w, h, _color, x, y);
    llantaIzq = new Llanta(x+ (w/4.0), y+h, h/8.0, h/3.0);
    llantaDer = new Llanta(x+ (3.0*w/4.0), y+h, h/8.0, h/3.0);
    
  }
  
  public void dibujar(){
    carcasa.dibujar();
    llantaIzq.dibujar();
    llantaDer.dibujar();
   
  }
  private void moverY(){
    carcasa.moverY(v);
    llantaIzq.moverY(v);
    llantaDer.moverY(v);
 
   
  }
  private void moverX(){
    carcasa.moverX(v);
    llantaIzq.moverX(v);
    llantaDer.moverX(v);
    
  }
  public void avanzar(){
    if(or == 1){//derecha
      if(v<0)
         v = -v;
       moverX();
    }
    if(or == 2){//arriba
      if(v>0)
         v = -v;
       moverY();
    }
    if(or == 3){//izquierda
      if(v>0)
         v = -v;
       moverX();
    }
    if(or == 4){//abajo
      if(v<0)
         v = -v;
       moverY();
    }
  }
  public void rotar(int or){
    this.or = or;
  }
}
