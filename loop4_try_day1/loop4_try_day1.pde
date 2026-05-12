// Grid size
int gap = 68;

// Square size
int s = 12;

void setup() {

  // Canvas size
  size(760, 540);

  // Background
  background(180, 20, 30);

  // Gold lines
  stroke(255, 190, 0);

  // Line width
  strokeWeight(2);

  // No fill
  noFill();

  // Pattern loop
  for (int row = -2; row < 12; row++) {

    for (int col = -2; col < 20; col++) {

      // Base position
      float x = col * gap;
      float y = row * gap;

      // Shift down
      if (col % 2 != 0) {
        y += gap / 2.0;
      }

      // Shift left
      x -= col * gap / 2.0;

      // Draw half squares
      if ((row + col) % 2 == 0) {

        // Center square
        rect(x - s/2, y - s/2, s, s);
      }

      // Up line
      line(x, y - gap/2, x, y - s/2);

      // Down line
      line(x, y + s/2, x, y + gap/2);

      // Left line
      line(x - gap/2, y, x - s/2, y);

      // Right line
      line(x + s/2, y, x + gap/2, y);

      // Top left
      line(x - gap/2, y - gap/2, x - gap/2, y);
      line(x - gap/2, y - gap/2, x, y - gap/2);

      // Top right
      line(x + gap/2, y - gap/2, x + gap/2, y);
      line(x, y - gap/2, x + gap/2, y - gap/2);

      // Bottom left
      line(x - gap/2, y, x - gap/2, y + gap/2);
      line(x - gap/2, y + gap/2, x, y + gap/2);

      // Bottom right
      line(x + gap/2, y, x + gap/2, y + gap/2);
      line(x, y + gap/2, x + gap/2, y + gap/2);
    }
  }
}
