int cols = 6;    // col
int rows = 6;    // row
float cellSize;

// three colors
color[] palette;

void setup() {
  size(600, 600);
  cellSize = width / cols;
  // colors
  palette = new color[]{
    color(70, 90, 100),
    color(120, 140, 150),
    color(210, 220, 225)
  };
  noStroke();
}

void draw() {
  background(255);

  // two loops-every grid
  for (int y = 0; y < rows; y++) {
    for (int x = 0; x < cols; x++) {
      
      // /3 to calculate the sequence
      int c = (x + y) % 3;
      
      // grid's center calculations
      float cx = x * cellSize + cellSize/2;
      float cy = y * cellSize + cellSize/2;

      // white-color-white-color
      for (float r = cellSize*0.45; r > 0; r -= cellSize*0.18) {
        fill(palette[c]);
        circle(cx, cy, r);
        fill(255);
        circle(cx, cy, r - cellSize*0.08);
      }
    }
  }
  noLoop();
}
