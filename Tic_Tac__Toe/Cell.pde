class Cell {
  int x;
  int y ;
  int w;
  int h;
  int state = 0;

  Cell(int _x, int _y, int _w, int _h) {
    x = _x;
    y = _y;
    w = _w;
    h = _h;
  }  

  void click(int _x, int _y) {
    int mx = _x;
    int my = _y;
    if (mx > x && mx < x+w && my > y && my < y+h) {

      if (player == 0 && state == 0) {
        state = 1;
        player = 1;
      } else if (player == 1 && state == 0) {
        state = 2;
        player = 0;
      }
    }
  }

  void display() {
    noFill();
    stroke(0);
    strokeWeight(3);
    rect(x, y, w, h);
    if (state == 1) {
      ellipseMode(CORNER);
      stroke(0, 0, 255);
      ellipse(x, y, w, h);
    } else if ( state == 2) {
      stroke(255,0,0);
      line(x, y, x+w, y+h); 
      line(x+w, y, x, y+h);
    }
  }
}
