abstract class Tierra{
  protected float x;
  protected float y;
  
  Tierra () { 
   
  }
  
  public abstract void dibujar();
  
  public void moverX(float x){
    this.x += x;
  }
  
  public void moverY(float y){
    this.y += y;
  }
}
