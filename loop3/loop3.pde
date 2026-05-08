// Circle size
int d = 180;

// Circle gap
int gap = 90;

void setup() {

  // Window size
  size(760, 760);

  // Background
  background(245);

  // Line style
  stroke(0);
  strokeWeight(3);

  // No fill
  noFill();

  // Row loop
  for (int y = -d/2; y < height + d; y += gap) {

    // Column loop
    for (int x = -d/2; x < width + d; x += gap) {

      // Draw circle
      ellipse(x, y, d, d);
    }
  }
}
