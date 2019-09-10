abstract class Aviones{
  protected float or;
  protected float v =1;
  Caracasa caracasa;
 Ventana[] ventana;
  Aviones(float v) { 
 this.v=v;
  }
  
  public abstract void dibujar();
  public void moverY(){
    caracasa.moverY(v);
    for(int i=0; i<3; i++)
      ventana[i].moverY(v);
  }
    private void moverX(){
    caracasa.moverX(v);
    for(int i=0; i<3; i++)
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
