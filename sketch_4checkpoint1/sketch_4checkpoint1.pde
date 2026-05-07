void setup() {
  size(500, 500);
  noLoop();
}

void draw() {
  int s = 50;
  
  for (int row = 0; row < 10; row++) {
    for (int col = 0; col < 10; col++) {
      if ((row + col) % 2 == 0) {
        fill(0);
      } else {
        fill(255);
      }
      rect(col * s, row * s, s, s);
    }
  }
}
