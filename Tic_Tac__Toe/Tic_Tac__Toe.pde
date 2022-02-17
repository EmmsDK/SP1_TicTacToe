Cell[][] board;
int cols = 3;
int rows = 3;
int player = 0; //0 = player1

void setup() {
  size(400, 400);
  smooth();  
  board = new Cell[cols][rows];
  for (int i = 0; i< cols; i++) {
    for ( int j = 0; j < rows; j++) {
      board[i][j] = new Cell(width/3*i, height/3*j, width/3, height/3);
    }
  }
}

void draw() {
  background(255);
  for (int i = 0; i<cols; i++) {
    for (int j = 0; j<rows; j++) {
      board[i][j].display();
    }
  }
}

void mousePressed() {
  for (int i = 0; i<cols; i++) {
    for (int j = 0; j<rows; j++) {
      board[i][j].click(mouseX, mouseY);
    }
  }
}
