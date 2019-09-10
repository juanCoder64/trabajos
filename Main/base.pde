public class Base extends Pieza{
  private float w;
  private float h;
  private int _color;

  // Carcasa c = new Carcasa(argumentos)
  Base(float w, float h, int _color, float x, float y) { 
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
    rect(x, y+25, w, h/2);
    rect(x+w-25, y+h/2.0-40, h/2.0, h+20);
  }
  
}
