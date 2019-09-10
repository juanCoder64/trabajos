class Avion extends Aviones{
  
  private float h;
  private float w;
  private float x, y;
  private float v;
  private int or=1;
  public Avion(float x, float y, float w, float h, int _color, float v){
    super(v);
    this.x = x;
    this.y = y;
    this.h = h;
    this.w = w;
    this.v = v;
    
    ventana = new Ventana[3];
    caracasa = new Caracasa(w, h, _color, x, y);
    for(int i=0; i<3; i++){
      ventana[i] = new Ventana(h/2.0, color(0, 255, 255), (w*(1+2*i))/6.0 + x, y + 3.0*h/8.0);
    }
    
  }
  
  public void dibujar(){
    caracasa.dibujar();
    for(int i=0; i<3; i++)
      ventana[i].dibujar();
  }
}
