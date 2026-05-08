// Grid size
int cols = 8;
int rows = 8;

// Tile size
int s = 90;

void setup() {

  // Window size
  size(720, 720);

  // Background
  background(245);

  // Border style
  stroke(220);
  strokeWeight(2);

  // Grid loop
  for (int row = 0; row < rows; row++) {

    for (int col = 0; col < cols; col++) {

      // Tile position
      float x = col * s;
      float y = row * s;

      // Draw tile
      drawTile(x, y, row, col);
    }
  }
}

void drawTile(float x, float y, int row, int col) {

  // Tile background
  fill(250);
  stroke(220);
  rect(x, y, s, s);

  // Triangle color
  fill(15);
  noStroke();

  // Rotation pattern
  boolean rotate = (col % 2 == 1);

  // Even rows
  if (row % 2 == 0) {

    if (!rotate) {

      triangle(
        x, y,
        x + s, y,
        x + s, y + s
      );
    }

    else {

      triangle(
        x + s, y,
        x + s, y + s,
        x, y + s
      );
    }
  }

  // Odd rows
  else {

    if (!rotate) {

      triangle(
        x, y,
        x + s, y,
        x, y + s
      );
    }

    else {

      triangle(
        x, y,
        x + s, y + s,
        x, y + s
      );
    }
  }

  // Draw border
  stroke(220);
  noFill();
  rect(x, y, s, s);
}
