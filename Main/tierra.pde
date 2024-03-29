abstract class Vehiculos{
  protected float or;
  protected float v =1;
  protected int s;
  Carcasa carcasa;
   Llanta llantaIzq;
   Llanta llantaDer;
 Ventana[] ventana;
  Vehiculos (float v, int s) { 
 this.v=v;
 this.s =s;
  }
  
  public abstract void dibujar();
  public void moverY(){
    carcasa.moverY(v);
    llantaIzq.moverY(v);
    llantaDer.moverY(v);
    for(int i=0; i<s; i++)
      ventana[i].moverY(v);
  }
    private void moverX(){
    carcasa.moverX(v);
    llantaIzq.moverX(v);
    llantaDer.moverX(v);
    for(int i=0; i<s; i++)
      ventana[i].moverX(v);
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
