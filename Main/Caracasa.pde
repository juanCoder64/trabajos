public class Caracasa extends Pieza{
  private float w;
  private float h;
  private int _color;

  // Carcasa c = new Carcasa(argumentos)
  Caracasa(float w, float h, int _color, float x, float y) { 
    super(x, y);
    this.w = w;
    this.h = h;
    this._color = _color;
    this.x = x;
    this.y = y;
  }
  
  public void dibujar(){
    rectMode(CORNER);
    fill(_color);
    ellipse(x+50,y+20,w+20,h+20);
    triangle(x+30,y+30,x+60,y+90,x+100,y+30);
  }
  
}
